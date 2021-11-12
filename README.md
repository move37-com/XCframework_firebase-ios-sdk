curl -s -O -L https://github.com/firebase/firebase-ios-sdk/releases/download/v8.9.1/Firebase.zip
unzip Firebase.zip
for file in `find . -name "*.xcframework"`; do ( echo $file; DIR=`dirname $file`; XCFRAMEWORK=`basename $file`; cd $DIR && zip -qr $XCFRAMEWORK.zip $XCFRAMEWORK)  ; done
for file in `find . -name "*.xcframework.zip"`; do ./makeBinaryTarget.sh $file  ; done


