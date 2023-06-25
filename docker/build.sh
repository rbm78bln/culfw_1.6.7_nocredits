#!/bin/sh -e
cd /

echo 'Compiling culfw...'
grep -v " CUR" /culfw/Devices/Makefile >/culfw/Devices/Makefile.fixed
make -C /culfw/Devices -f Makefile.fixed all
chown --reference=/culfw/CHANGED -R /culfw
rm -f /culfw/Devices/Makefile.fixed
find /culfw -name '*.hex'

exit 0
