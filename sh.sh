#!/bin/sh

dpkg-scanpackages -m ./debs > Packages
rm -r -f /Users/k/Documents/GitHub/repo/Packages.bz2
bzip2 Packages
dpkg-scanpackages -m ./debs > Packages
