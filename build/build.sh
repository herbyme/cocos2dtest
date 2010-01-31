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
PROFILE_HOME=~/Library/MobileDevice/Provisioning\ Profiles/
KEYCHAIN=~/Library/Keychains/login.keychain

. "$WORKSPACE/build/build.config"

[ -d "$PROFILE_HOME" ] || mkdir -p "$PROFILE_HOME"
security unlock -p $PASSWORD

cd $WORKSPACE/iphone;
agvtool new-version -all $BUILD_NUMBER

for sdk in $SDKS; do
        cd $WORKSPACE/iphone
        xcodebuild -target $TARGETNAME -configuration $CONFIG -sdk $sdk clean;
        xcodebuild -target $TARGETNAME -configuration $CONFIG -sdk $sdk || failed build;
done
