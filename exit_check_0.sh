#!/bin/bash

devb-loopback blk cache=512k,vnode=128,automount=lo0:/etc/csp/execution_manager:qnx6 loopback rw,blksz=4096,fd=/var/csp_debug/etc_csp.img &
devb-loopback blk cache=512k,vnode=128,automount=lo1:/opt/csp/bin:qnx6 loopback rw,blksz=4096,fd=/var/csp_debug/opt_csp.img &

exit 0
