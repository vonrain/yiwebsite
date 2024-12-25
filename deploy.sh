#!/bin/bash

# 构建网站
hugo -D

# 进入 public 目录
cd public

# 初始化一个新的 git 仓库
git init
git add .
git commit -m "Deploy website"

# 添加 GitHub 仓库的 gh-pages 分支
git remote add origin https://github.com/vonrain/yiwebsite.git 
git branch -M gh-pages

# 强制推送到 gh-pages 分支
git push -f origin gh-pages

# 返回到项目根目录
cd ..

