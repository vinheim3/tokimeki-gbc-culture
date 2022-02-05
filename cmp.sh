#!/bin/sh

cmp -l original/tokimekiC.gbc tokimekiC.gbc | gawk '{printf "%08X %02X %02X\n", $1, strtonum(0$2), strtonum(0$3)}'
