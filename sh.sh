#!/bin/sh

dpkg-scanpackages -m ./debs > Packages
rm -r -f /Users/sandwich/Documents/repo/Packages.bz2
bzip2 Packages
dpkg-scanpackages -m ./debs > Packages
