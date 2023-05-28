#!/bin/sh
# 项目名称
PROJECT_NAME="YourProject"
# Scheme 名称
SCHEME_NAME="YourScheme"
# 运行测试
xcodebuild test -workspace "${PROJECT_NAME}.xcworkspace" -scheme "${SCHEME_NAME}" -destination 'platform=iOS Simulator,name=iPhone 8,OS=latest'
echo "Tests completed."
