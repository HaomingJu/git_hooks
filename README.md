# 1. 功能

**用于团队C/C++代码质量的本地管控, 以Cpplint对代码进行静态检查.**

激活git hooks(钩子)脚本`pre-commit`

在键入命令`git commit`后, 在执行之前自动触发该钩子脚本.

返回值为0, 则顺利将暂存区(index)中的数据推入仓库中.

返回值为非0, 则提交失败并给出相应的文件不符合cpplint的要求的说明

# 2. 依赖
**依赖cpplint**

解决cpplint的依赖
```
pip install cpplint
```


# 3. 部署

**下载代码库**

```
git clone --recursive https://github.com/HaomingJu/git_hooks.git
```

**执行部署脚本**

假如本地有代码仓库 `dms`, 路径为 `/home/haoming.ju/code/dms`, 那么:

```
sh ./setenv.sh /home/haoming.ju/code/dms/
```

# 4. 场景用法
某仓库下有文件:

```
.
├── a.c
├── b.cpp
├── c.cxx
└── sub_dir
    ├── sub_a.c
    └── sub_b.cpp
```
在部署钩子脚本之后, 对修改的文件逐个执行`git add`命令.

此时修改的文件在暂存区.

执行命令 `git commit`, 出现一下输出.

```
a.c:0:  No copyright message found.  You should have a line: "Copyright [year] <Copyright Owner>"  [legal/copyright] [5]
Done processing a.c
Total errors found: 1
.............. COMMIT FAILURE ..............
```
意味着文件不符合cpplint的要求: **a.c line:0 没有权利声明**

将全部文件修正过后方可顺利提交入仓库.


**越过钩子脚本检查**

当遇到特殊情况来不及进行cpplint静态检查又急于进行提交时, 可以通过添加参数 ` --no-verify`或者 `-n` 来越过检查.

```
git commit --no-verify
git commit -n
```




# 5. License

![](http://www.wtfpl.net/wp-content/uploads/2012/12/freedom.jpeg)

```
            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
                    Version 2, December 2004

 Copyright (C) 2004 Sam Hocevar <sam@hocevar.net>

 Everyone is permitted to copy and distribute verbatim or modified
 copies of this license document, and changing it is allowed as long
 as the name is changed.

            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

  0. You just DO WHAT THE FUCK YOU WANT TO.
```

