# BJHelper

[![twitter](https://img.shields.io/badge/twitter-@beijiahiddink-blue.svg?style=flat)](https://twitter.com/beijiahiddink)          
[![weibo](https://img.shields.io/badge/weibo-@beijiahiddink-green.svg?style=flat)](http://weibo.com/u/3788698095)
[![mail](https://img.shields.io/badge/mail-@beijiahiddink-pink.svg?style=flat)](mailto://wangxu@beijiahiddink.com)

## 什么是BJHelper

BJHelper是一款完成iOS本地应用分发的示例demo，简单实现了现在iOS第三方应用市场本地安装app的功能，效果如下：

<p align="center">
    <img src="Screenshot/gif-1.gif" width="320" height="425">
</p>

## 如何安装

### 手动安装

```ruby
git clone https://github.com/beijiahiddink/BJHelper.git
open BJHelper
```

## 该怎样去使用

### 关于ipa

示例中的ipa包属于个人签名，大家安装上后出现无法运行的现象，在ipa处理上大致分为以下两种：

1. 自己用xcode正常打包签名ipa（很适合自己项目使用）；
2. 使用签名工具进行ipa重签（适合别人签过名没有上线AppStore或者越狱应用，重签操作可访问 <http://www.jianshu.com/p/08e3f8f89742>）。

### 关于plist

关于安装的plist文件大致结构如下，具体请参阅示例。

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>items</key>
    <array>
        <dict>
            <key>assets</key>
            <array>
                <dict>
                    <key>kind</key>
                    <string>software-package</string>
                    <key>url</key>
                    <string>https://local.beijiahiddink.com:端口号/ipa相对根目录路径</string>
                </dict>
            </array>
            <key>metadata</key>
            <dict>
                <key>bundle-identifier</key>
                <string>包的标识</string>
                <key>bundle-version</key>
                <string>版本号</string>
                <key>kind</key>
                <string>software</string>
                <key>title</key>
                <string>标题</string>
            </dict>
        </dict>
    </array>
</dict>
</plist>
```

### 配置

项目目前支持设置服务根目录，和端口号，默认目录为App、端口为54111，服务域名现在不支持修改。

### 运行

以上步骤之后就可以运行BJHelper了，确定网络是打开的，点击本地目录的安装plist文件便可以安装应用了，应用安装必须在真机环境下进行。

## 最后

喜欢本项目的可以给我:star2:[加星](https://github.com/beijiahiddink/BJHelper/stargazers)哦！

## License

BJHelper is released under the MIT license. See [LICENSE](LICENSE) for details.  