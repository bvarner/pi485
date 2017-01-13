# pi485 - TTL UART (Raspberry Pi / Arduino) to RS485.

So, you want to hook up your Raspberry Pi to an RS-485 bus? Fantastic.

You have a few options.
1. USB Adapters. But if you're here I'm going to assume you want to use the UART, so this really isn't an option, is it?
2. Complete commercial options, such as the [LinkSprite RS485 module](http://store.linksprite.com/rs485-gpio-shield-for-raspberry-pi-v2/).
   This is a fantastic device. It's performant, energy-conscious (uses a version of the MAX485 with power-management features) and makes
   use of MOSFETS for switching LED loads in the circuit. The one down side I've seen is that according to the 
   [schematic](https://s3.amazonaws.com/linksprite/Shields/RS485_RPI/RS485+Shield+for+RPi+B%2B.PDF) it appears R0 (the RS485 termination
   resistor) is always present, although not given a value. I do not have one of these devices to 'tinker' with. I trust it would work well.
3. Commercial MAX485 Modules. These modules provide a breakout-board approach to wiring up a MAX485 chip. A popular example of this kind of
   device is the [LC Technology Co. TTL to RS-485 module](http://www.chinalctech.com/index.php?_m=mod_product&_a=view&p_id=811). This device
   in particular was the starting point of my experiments and investigations. Again, this device has the unfortunate down-side of a soldered
   on termination resistor.
4. Build your own from discrete components!

## What's in this repo?

In this repo, you'll find schematics, parts lists, diagrams, and photos of my tests with RS-485 interfacing a Raspberry Pi UART.

## Please, keep in mind...

* I am not a professional. In reality I'm a software engineer who got into this out of curiosity. I have always detested black-boxes 
(things which I cannot take apart or understand completely) and it's my nature to dismantle, analyze, evaluate, and eventually take that 
knowlege and apply it to things I synthesize. But, I consider electronics a 'hobby'. Please treat it as such.

* TTL signaling of serial data is has values wehre you think they should be, but it idles 'high'. 
A logical 0 is actually GND. A Logical 1 is actually +V. But when there are no transmissions taking place, the pin holds 'high', at +V.
I personally found [this SparkFun tutorial](https://www.sparkfun.com/tutorials/215) to be highly educational on the nuances of TTL.
If your protocol doesn't include a start / stop bit, this can be problematic for converting TTL _transmissions_ to RS-485.

# Goals of this design

1. Jumperable termination (enabling multi-node support)
2. Latched DE / RE drive of the Max485, using a modified missing pulse 555 circuit.
3. TX / RX LED output.
4. PWR LED Output.
5. Additional +5v / GND supply header to use as a power input (allowing back-feeding of VCC / GND to TTL source)

Based upon experiments with the 555 timer latch, and issues with silicon diodes being able to switch fast enough, I've decided to try using
BJT NPN's as a replacement for the the BAT43 Shottky Diode. In my prototype boards, I've had a lot of noise on the line, and I suspect
it's due to the diode not being able to switch fast enough to keep the 555 circuit from behaving like a 'normal' missing-pulse detector.
In this [NPN transistor replacement simulation](http://tinyurl.com/hlnfnlf) things seem to work correctly at the signal level.

## Off The Shelf Module Shortcomings / Circuit Analysis

Almost every module I've looked at is based on the [MAX485](http://datasheets.maximintegrated.com/en/ds/MAX1487-MAX491.pdf).

It seems that off-the-shelf modules tend to approach the MAX485 series of half-duplex (two wire RS485) chips as a pretty simple TTL->485 
converter, suitable for locating at the _endpoints_ of a very simplistic master-slave network. In order to drop in multiple modules 
(multiple slaves) or enable multi-master communications and form a true network, there's some hardware work that needs to be done.

* Soldered on Termination
For example, the LinkSprite module and the LC Tech modules both carry 120Ohm termination resistors, and no jumper header to remove it from
the circuit. The only practical option to add these modules as a network node other than an 'end point' is to unsolder that resistor.

* DE / RE Pin Hysteresis
Additionally, the LC Tech module has the DE and RE pins of the Max485 directly accessible over headers but provides no extra circuitry to 
drive the input to those pins based off the TTL TX. These two pins of a Max485 are responsible for setting the duplex state of the chip 
(Driver Enable / Receiver Enable) for either sending or receiving data. The RE pin is active on Logic Low (GND) and the DE pin is active on 
Logic High (~20ma of forward voltage). For this reason, you'll commonly see these pins wired together. When set High, the Max485 disables
receiving, and enables transmitting. When pulled low, it enables receiving and disables transmitting.

I've found many schematics which suggest tying the DE / RE pins to a separate GPIO. This is a terrible idea in practice. In a busy RS485 bus
the time between the DI/DE pins shifting and the start of output on the TX pin would effectively guarantee a collision on the network.

I've also found schematics for RS-232 -> RS-485 converters which work by converting the 232 signal to TTL, then the TTL to RS-485. In these
circuits, they tend to leverage a 555 timer as a time-delayed latch, to hold the DE / RE pins in transmit mode based on the state of the TTL
TX pin. This seems like a really good idea in theory, and in circuit simulations (I don't have a physical scope) it appears that the 555
output will respond quickly enough for at least a 38400baud network to cleanly communicate all the necessary symbols over the wire (given 
the sizing of resistors and capacitors in use with the 555).

In this [555 TTL Latch Simulation](http://tinyurl.com/hx6gfwh), there's a +5V supply, GND, and a H/L logic input (clickable) on the left. 
The output pin of the 555 has a H/L output detector on it, and drives an NPN transistor to turn on an LED. In a real circuit using this 
technique, the 555 output pin would drive the DE/RE pins on a Max485. As an example, checkout the 
[AVT530](http://serwis.avt.pl/manuals/AVT530.pdf), an RS232 to RS485 converter that uses TTL as an intermediary. The schematic is on page 2.

The same company also uses this same 555 & Max485 circuit on their [USB to RS485](http://serwis.avt.pl/manuals/AVT530USB.pdf) converter.

The down-side with these circuits, is that there is a timing differential after the TX pin stops transmitting that the RE pin is held high.
Recall earlier I mentioned things about start / stop bits? This is where that comes into play.
At 38400Hz (as in the simulation above) this delay accounts for an entire clock cycle of bit transmission on the bus. In the interactive 
simulations above, note how if you switch the TTL input high (0 or idle) it takes 2 clocks before the 555 sets the output back low. If your
bit protocol doesn't include a stop bit (idle / high) then the DE / RE will not be disabled at the appropriate time. Without stop bits, you 
will transmit one extra idle (logical 1) on the 485 bus and miss receiving a bit for a clock with these latched circuits.

Here's another [simulation of the 555 latch circuit with pulsed input](http://tinyurl.com/hn6zreu). In this revision, we've added a pull-up
resistor (5k) to the input trigger to hold it 'high' when idle, moved the input clk to drive a decade counter, and tied output pins from the
counter to switch an NPN transistor that sinks the trigger pin low when the counter has a high output. Think of the counter as sending 
logical 1's and 0's by pushing a switch. When the switch (transistor) is closed, the TR voltage drops to ground. If you have start or stop
bits enabled in your stream, this initial drop (0) will be the start bit, which will trigger the 555 output high. In the AVT circuits, this 
drives the RE / DE pins high, putting the MAX485 into transmit mode. An idle 'high' stop bit (Q8) will let the timer's capacitor drain, 
resetting it's output pin. But if you're not using start / stop bits... and you're just getting a stream of bits that is synchronized 
in software, then using a 555 latch is going to be asking for trouble.

In looking at the LinkSprite module, I found it interesting that it dispenses with a time-delay latch and supplies power to the DE / RE pins
via MOSFETS switching a 0.33mA current based upon the TX input. This seems rather 'icky' to me, since logically I would think the DE / RE
pins going 'high' whenever the TTL signal goes idle, would cause an issue. So I threw together a 
[simulation of the TTL input with MOSFET](http://tinyurl.com/glnvxa2) triggers. This confirmed what I thought as far as behavior without 
delay. The good news here, is if you're sending a '0' on the RS-485 bus, you'll transmit that 0, and be prepared to receive any values from
the bus immediately afterward. So if your protocol doesn't use stop bits, you'll be able to read the stream without error. The natural
question at this point is, "what if I'm trying to transmit a '1' (logical TTL high / idle value)?" In that case, the DE pin would be pulled
low, along with the RE pin, putting the MAX485 into Driver disable, Receiver Enabled mode. I'm not sure if this would effectively pulse the
RS-485 bus in an appropriate manner. The Bus signals bits based on bias differences between the two wires, A and B. Something about this
arrangement smells funny.

According to the stuff I've read on RS-485, a driver 'idle' would be A+, B- potentials. After pouring over the Max485 datasheet, I don't see
anything that will lead me to believe RE high / DE low would result in A+, B- potentials being emitted on output lines of the chip.

Nevertheless, it must work... right? Unless the LinkSprite and LC Tech components aren't being tested in multi-master half-duplex 
networks. I find that situation highly likely, since they both carry soldered-on termination resistors that cannot be jumper-disabled.

