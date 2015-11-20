#Blinking LED in ARM assembly with LPC1114 or LPC1110

Attach LED to PIO0-2 or PIO0-3 - it will turn on and off with timeout about 1 second.

(note LCP1110 have no PIO-3)

See files `compile-1110.sh` and `compile-1114.sh` for commands to compile and upload
firmware to the chips. Note that `lpc21isp` programmer could not be used for `lpc1110`
so we need `mxli` and I had no luck with the recent version (it gives segmentation fault)
but `v2.3` worked like a charm.
