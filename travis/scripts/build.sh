#!/bin/sh
xcrun xcodebuild -project TravisTest.xcodeproj -scheme TravisTest

xcrun xcodebuild -exportArchive -archivePath TravisTest.xcarchive \
  -exportPath ./build -exportOptionsPlist ExportOptions.plist
