#!/bin/sh
# 清理 Derived Data (编译产物)
rm -rf ~/Library/Developer/Xcode/DerivedData
# 清理模拟器缓存
xcrun simctl erase all
echo "Xcode cache cleared."
