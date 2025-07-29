# Nexttrace-Install
安装[Nexttrace](https://github.com/nxtrace/NTrace-core/releases)

使用方法:

### 1.安装

1.打开任意目录,右键空白处选择"在终端中打开"，执行:

```
curl -sSL -x socks5://{Your ProxyServer}:{Port} https://github.com/nxtrace/NTrace-core/releases/latest/download/nexttrace_windows_amd64.exe > nexttrace_windows_amd64.exe
```
```
curl -sSL -x socks5://{Your ProxyServer}:{Port} https://hxhgts.github.io/Nexttrace-Install/install-AdminRequired.bat > install-AdminRequired.bat
```

2.右击`install-AdminRequired.bat`,选择"以管理员身份运行"

### 2.卸载

1.文件管理器进入任意目录下,执行:

```
curl -sSL -x socks5://{Your ProxyServer}:{Port} https://hxhgts.github.io/Nexttrace-Install/Uninstall-AdminRequired.bat > Uninstall-AdminRequired.bat
```

2.右击`Uninstall-AdminRequired.bat`,选择"以管理员身份运行"

### 3.使用

安装后,默认放开Windows防火墙对Nexttrace ICMP协议的限制,且使用国内连接友好的数据库,命令:

1.直连:
```
nexttraceo {DomainName/IP Address}
```
2.代理(nexttracex.bat内容可能需要修改,默认代理服务器`socks5://127.0.0.1:10808`):
```
nexttracex {DomainName/IP Address}
```
