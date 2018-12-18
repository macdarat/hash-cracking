#!/usr/bin/env bash
C_CTYPE=C awk '!/[^[:alnum:][:space:][:punct:]]/' wl.txt > wlAN.txt
