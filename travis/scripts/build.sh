#!/bin/sh
xcrun xcodebuild -project TravisTest.xcodeproj -scheme TravisTest \
  -archivePath PgySDKDemo.xcarchive archive

xcrun xcodebuild -exportArchive -archivePath TravisTest.xcarchive \
  -exportPath ./build -exportOptionsPlist ExportOptions.plist

