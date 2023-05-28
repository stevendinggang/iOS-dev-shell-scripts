#!/bin/bash
# 遍历项目中所有的 .swift 文件
find . -name "*.swift" | while read filename; do
    # 使用 grep 在文件中查找 TODO 注释
    grep -Hn "TODO:" "$filename"
done
