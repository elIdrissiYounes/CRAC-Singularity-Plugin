#!/bin/sh
latest=$( ls -t1 ./lancium-checkpoint/ | grep .dmtcp |  head -n 1 )
dmtcp_restart --cuda --new-coordinator "./lancium-checkpoint/$latest"
