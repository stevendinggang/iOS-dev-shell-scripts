#!/bin/bash
# 切换到图片资源目录
cd /path/to/your/assets/directory
# 为每个 .png 文件执行操作
for f in *.png; do
  # 转换文件名为小写并用下划线替换空格
  mv -- "$f" "$(echo $f | tr '[:upper:]' '[:lower:]' | tr ' ' '_')"
done
