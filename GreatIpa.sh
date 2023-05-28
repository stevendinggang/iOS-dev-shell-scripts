#!/bin/sh
# 项目名称
PROJECT_NAME="YourProject"
# Scheme 名称
SCHEME_NAME="YourScheme"
# 导出 .ipa 文件的目录
EXPORT_DIRECTORY="~/Desktop"
# 编译项目
xcodebuild -workspace "${PROJECT_NAME}.xcworkspace" -scheme "${SCHEME_NAME}" -configuration Release clean build
# 创建 .ipa 文件
xcodebuild -exportArchive -archivePath "${PROJECT_NAME}.xcarchive" -exportPath "${EXPORT_DIRECTORY}" -exportOptionsPlist "ExportOptions.plist"
echo ".ipa file created at ${EXPORT_DIRECTORY}."
