#! /usr/bin/env bash

# 判断参数
if [ $# -ne 1 ]; then
    echo "[Usage]: sh ./setevn.sh repo_path"
    echo "[Example]: sh ./setevn.sh ~/code/hobot-dms"
    exit 1
fi


# 部署钩子脚本
cp ./pre-commit $1/.git/hooks/
chmod +x $1/.git/hooks/pre-commit
