#!/bin/sh
xcrun xcodebuild -project TravisTest.xcodeproj -scheme TravisTest \
  -archivePath TravisTest.xcarchive archive

xcrun xcodebuild -exportArchive -archivePath TravisTest.xcarchive \
  -exportPath ./build -exportOptionsPlist ExportOptions.plist

