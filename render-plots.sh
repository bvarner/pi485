#!/bin/sh
# After plots have been exported from kicad, this script will render the svg's to PNGs of a reasonable size.

mogrify -format png -trim -bordercolor white -border 10x10 -density 150 */plots/*.svg
mogrify -format png -flop -background "rgb(186,140,108)" -trim -bordercolor white -border 10x10 -density 150 */plots/*-brd.svg
