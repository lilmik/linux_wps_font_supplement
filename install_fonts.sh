#!/bin/bash

# 定义字体目录
FONT_DIR="/usr/share/fonts/truetype/windows_fonts"

# 创建字体目录（如果不存在）
sudo mkdir -p "$FONT_DIR"

# 查找当前目录及其子目录中的所有 .ttf 和 .ttc 文件
find . -type f \( -name "*.ttf" -o -name "*.ttc" \) -exec sudo cp {} "$FONT_DIR" \;

# 更新字体缓存
sudo fc-cache -f -v

echo "字体安装完成！"