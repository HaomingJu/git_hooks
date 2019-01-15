# 功能
激活git hooks(钩子)脚本`pre-commit`

在键入命令`git commit 后, 在执行之前自动触发该钩子脚本.

返回值为0, 则顺利将暂存区(index)中的数据推入仓库中.

返回值为非0, 则提交失败并给出相应的文件不符合cpplint的要求的说明

# 依赖
**依赖cpplint**

解决cpplint的依赖
```
pip install cpplint
```


# 部署

**下载代码库**

```
git clone --recursive https://github.com/HaomingJu/git_hooks.git
```

**执行部署脚本**
加入本地有代码仓库 `dms`, 路径为 `/home/haoming.ju/code/dms`, 那么:

```
sh ./setenv.sh /home/haoming.ju/code/dms/
```

# 用法

