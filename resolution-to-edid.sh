#/bin/sh
/cvt $1 $2 | sed -n '2p' | sed 's/_60.00//' | ./modeline2edid > /dev/null &&
make > /dev/null &&
cat $1x$2.bin

