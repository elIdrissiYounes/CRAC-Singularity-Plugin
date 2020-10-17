#!/bin/sh
echo "Launching DMTCP..."
DMTCP_DL_PLUGIN=0 /.dmtcp/dmtcp/bin/dmtcp_launch  --no-gzip --cuda --kernel-loader /.dmtcp/dmtcp/contrib/split-cuda/kernel-loader.exe --target-ld /lib64/ld-linux-x86-64.so.2 --with-plugin /.dmtcp/dmtcp/contrib/split-cuda/libdmtcp_split-cuda.so --ckptdir ./lancium-checkpoint/ --ckpt-open-files $@
