#!/bin/sh

FILE=$1
BASE=`basename $FILE`
SUM=`shasum -a 256 $FILE | sed 's/ .*//'`
PACKAGE=`echo "$BASE" | cut -f 1 -d '.'`
URL="https://github.com/move37-com/XCframework_firebase-ios-sdk/raw/main/$FILE"

echo ".binaryTarget(name: \"$PACKAGE\", url: \"$URL\", checksum: \"$SUM\"),"
