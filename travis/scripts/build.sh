#!/bin/sh
#xcrun xcodebuild -project TravisTest.xcodeproj -scheme TravisTest \
#  -archivePath TravisTest.xcarchive archive
#
#xcrun xcodebuild -exportArchive -archivePath TravisTest.xcarchive \
#  -exportPath ./build -exportOptionsPlist ExportOptions.plist

#!/usr/bin/env bash

if [[ $TRAVIS_BRANCH == 'master' ]];then
    fastlane pgy
elif [[ $TRAVIS_BRANCH == 'testflight' ]];then
    fastlane test
elif [[ $TRAVIS_BRANCH == 'firtest' ]];then
    fastlane firtest
else
    fastlane fir
fi
