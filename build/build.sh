#This is a build shell script by: 
#!/bin/sh
function failed()
{
    echo "Failed: $@" >&2
    exit 1
}

set -ex

export OUTPUT=$WORKSPACE/output
rm -rf $OUTPUT
mkdir -p $OUTPUT

. "$WORKSPACE/build/build.config"

cd $WORKSPACE/;
agvtool new-version -all $BUILD_NUMBER

for sdk in $SDKS; do
        cd $WORKSPACE
        xcodebuild -target $TARGETNAME -configuration $CONFIG -sdk $sdk clean;
        xcodebuild -target $TARGETNAME -configuration $CONFIG -sdk $sdk || failed build;
done
