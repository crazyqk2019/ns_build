# Windows下devkitPro Switch编译环境

## 文件说明
- devkitpro.sh -- devkitpro环境变量设置文件
- inst_pkgs.sh -- 安装必要的msys和mingw包
- inst_ns_pkgs -- 安装必要devkitpro包

## msys2/mingw64编译环境安装步骤
1. 从 https://www.msys2.org/ 下载msys2安装器进行安装

2. 添加devkitpro环境变量
拷贝devkitpro.sh到/etc/profile.d

3. 使用清华大学服务器镜像
编辑 /etc/pacman.d下的mirrorlist.*文件
把 https://mirrors.tuna.tsinghua.edu.cn 服务器地址移到最前面

4. 修改配置pacman配置，以使用wget下载安装包
编辑 /etc/pacman.conf 去掉此行注释
`XferCommand = /usr/bin/wget --passive-ftp -c -O %o %u`

5. 添加devkitpro仓库到pacman配置
编辑/etc/pacman.conf，添加以下内容
```
[dkp-libs]
Server = https://downloads.devkitpro.org/packages
[dkp-windows]
Server = https://downloads.devkitpro.org/packages/windows
```

6. 导入devkitpro包校验秘钥
```
 pacman-key --recv BC26F752D25B92CE272E0F44F7FD5492264BB9D0
 pacman-key --lsign BC26F752D25B92CE272E0F44F7FD5492264BB9D0
```

7. 更新pacman数据库
`pacman -Sy'

8. 升级 msys2
运行 `pacman -Su` 数次，直到无更新

9. 安装更多devkitpro秘钥链
 `pacman -S --needed --noconfirm devkitpro-keyring`

10. 安装编译PC版程序必要包
运行inst_pkgs.sh

11. 安装编译switch程序必要包
运行inst_ns_pkgs.sh

