# Nexttrace-Install
安装Nexttrace

使用方法:

### 1.安装

1.下载nexttrace_windows_amd64.exe到任意目录,右键空白处选择"在终端中打开"，执行:

```
curl -x socks5://{Your ProxyServer}:{Port} https://hxhgts.github.io/Nexttrace-Install/install-AdminRequired.bat > install-AdminRequired.bat
```

2.右击install-AdminRequired.bat,选择"以管理员身份运行"

### 2.卸载

1.文件管理器进入任意目录下,执行:

```
curl -x socks5://{Your ProxyServer}:{Port} https://hxhgts.github.io/Nexttrace-Install/Uninstall-AdminRequired.bat > Uninstall-AdminRequired.bat
```

2.右击Uninstall-AdminRequired.bat,选择"以管理员身份运行"

### 3.使用

安装后,默认放开Windows防火墙对Nexttrace ICMP协议的限制,且使用国内连接友好的数据库,命令:

1.直连:
```
nexttrace {DomainName/IP Address}
```
2.代理(nexttracex.bat内容可能需要修改):
```
nexttracex {DomainName/IP Address}
```
