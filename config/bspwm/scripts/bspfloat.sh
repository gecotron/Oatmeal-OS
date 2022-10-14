#! /bin/sh

# Open App in float mode
bspc rule -a \* -o state=floating && $@
