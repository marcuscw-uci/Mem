#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /data11/home/marcuscw/Desktop/Mem/solution1/.autopilot/db/a.g.bc ${1+"$@"}
