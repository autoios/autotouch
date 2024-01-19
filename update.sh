#!/bin/sh
bzip2 -c9k ./Packages > ./Packages.bz2
gzip -c9k ./Packages > ./Packages.gz
printf "Origin: Autoios AutoTouch Rootful\nLabel: Autoios AutoTouch Rootful\nSuite: stable\nVersion: 1.0\nCodename: ios\nArchitecture: iphoneos-arm\nComponents: main\nDescription: Autoios AutoTouch Rootful\nMD5Sum:\n "$(cat ./Packages | md5 | cut -d ' ' -f 1)" "$(stat -f%z ./Packages)" Packages\n "$(cat ./Packages.bz2 | md5 | cut -d ' ' -f 1)" "$(stat -f%z ./Packages.bz2)" Packages.bz2\n "$(cat ./Packages.gz | md5 | cut -d ' ' -f 1)" "$(stat -f%z ./Packages.gz)" Packages.gz\n" >Release;
exit 0
