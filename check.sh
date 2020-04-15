#!/bin/sh

opkg update

opkgInstalled="$(opkg list-installed 2> /dev/null | wc -l)" #silencing error output
opkgUpgradable="$(opkg list-upgradable 2> /dev/null | wc -l)" #silencing error output

echo "$opkgInstalled packages are installed." && echo "$opkgUpgradable packages can be upgraded." && echo

echo $(date) >> report.txt
echo "$opkgInstalled packages are installed $opkgUpgradable packages can be upgraded" >> report.txt
