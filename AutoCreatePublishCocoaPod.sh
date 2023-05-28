#!/bin/sh
# 组件名称
COMPONENT_NAME=$1
# 创建新的 pod
pod lib create $COMPONENT_NAME
# 自动填充 podspec 文件（你需要根据实际情况修改这些值）
sed -i '' 's/<<VERSION>>/0.1.0/' $COMPONENT_NAME/$COMPONENT_NAME.podspec
sed -i '' 's/<<AUTHOR>>/Your Name/' $COMPONENT_NAME/$COMPONENT_NAME.podspec
sed -i '' 's/<<EMAIL>>/your@email.com/' $COMPONENT_NAME/$COMPONENT_NAME.podspec
# 验证 podspec 文件
pod lib lint $COMPONENT_NAME/$COMPONENT_NAME.podspec
# 将 pod 推送到你的私有仓库
pod repo push your-private-repo $COMPONENT_NAME/$COMPONENT_NAME.podspec
