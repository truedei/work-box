# work-box
work-box；此git仓库，存放一些小的工具集，可以帮助开发者们快速的去完成一些事情

# 如何提交资料

**1、添加需要提交的资料到本地**

```shell
git add /linux/*
```

**2、提交commit**
```shell
git commit -m "提交说明"
```

**3、提交到github仓库**

```shell
git push -u origin main

```

**4、一个完整的例子：**

```shell
[root@TrueDei ~]# cd /data/workspace/work-box/linux/
[root@TrueDei linux]# ll
total 8
-rwxrwxrwx 1 root root  456 Dec 19 18:09 auto_config_jdk.sh
-rwxr-xr-x 1 root root 2320 Dec 24 10:54 start.sh
[root@TrueDei linux]# 
[root@TrueDei linux]# 
[root@TrueDei linux]# 
[root@TrueDei linux]# 
[root@TrueDei linux]# mv start.sh start_server.sh
[root@TrueDei linux]# 
[root@TrueDei linux]# ll
total 8
-rwxrwxrwx 1 root root  456 Dec 19 18:09 auto_config_jdk.sh
-rwxr-xr-x 1 root root 2320 Dec 24 10:54 start_server.sh
[root@TrueDei linux]# 
[root@TrueDei linux]# 
[root@TrueDei linux]# cd ..
[root@TrueDei work-box]# 
[root@TrueDei work-box]# 
[root@TrueDei work-box]# 
[root@TrueDei work-box]# ll
total 4
drwxr-xr-x 2 root root  55 Dec 24 13:21 linux
-rw-r--r-- 1 root root 198 Dec 19 19:02 README.md
[root@TrueDei work-box]# 
[root@TrueDei work-box]# 
[root@TrueDei work-box]# git add linux/*
[root@TrueDei work-box]# 
[root@TrueDei work-box]# 
[root@TrueDei work-box]# 
[root@TrueDei work-box]# git commit -m "提交启动多个服务的脚本"
[main ac4e20f] 提交启动多个服务的脚本
 1 file changed, 157 insertions(+)
 create mode 100755 linux/start_server.sh
[root@TrueDei work-box]# 
[root@TrueDei work-box]# 
[root@TrueDei work-box]# 
[root@TrueDei work-box]# 
[root@TrueDei work-box]# 
[root@TrueDei work-box]# git push -u origin main
Username for 'https://github.com': truedei  #输入github的账号
Password for 'https://truedei@github.com':  #输入github的密码
Enumerating objects: 6, done.
Counting objects: 100% (6/6), done.
Delta compression using up to 2 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 1.20 KiB | 1.20 MiB/s, done.
Total 4 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/truedei/work-box.git
   37d16f4..ac4e20f  main -> main


[root@TrueDei work-box]# 
[root@TrueDei work-box]# 
[root@TrueDei work-box]# 
[root@TrueDei work-box]# 
[root@TrueDei work-box]# 
```


# Linux相关

> linux目录下，存放的是Linux下相关的脚本等



