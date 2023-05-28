#!/bin/bash

# 获取新版本号
read -p "Enter the new version number: " VERSION_NUMBER

# 更新 .podspec 文件中的版本号
sed -i "" "s/s.version[ ]*=.*$/s.version      = \"${VERSION_NUMBER}\"/" MyLibrary.podspec

# 提交 .podspec 文件的更改到 Git
git add MyLibrary.podspec
git commit -m "Release version ${VERSION_NUMBER}"

# 创建一个新的 Git 标签
git tag "${VERSION_NUMBER}"

# 将更改推送到 Git
git push origin master --tags

# 验证 .podspec 文件
pod lib lint

# 将新版本发布到 CocoaPods 的主服务器
pod trunk push MyLibrary.podspec
