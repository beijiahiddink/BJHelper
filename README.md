# BJHelper

[![twitter](https://img.shields.io/badge/twitter-@beijiahiddink-blue.svg?style=flat)](https://twitter.com/beijiahiddink)          
[![weibo](https://img.shields.io/badge/weibo-@beijiahiddink-green.svg?style=flat)](http://weibo.com/u/3788698095)
[![mail](https://img.shields.io/badge/mail-@beijiahiddink-pink.svg?style=flat)](mailto://wangxu@beijiahiddink.com)

## 什么是BJHelper

BJHelper是一款完成iOS本地应用分发的示例，实现了现在iOS第三方应用市场本地安装app的功能，效果如下：

<div style="text-align: center" >
    <img src="Screenshot/gif1.gif" width="320px" height="420px">
</div>

## 如何安装

### 手动安装

```ruby
git clone https://github.com/beijiahiddink/BJHelper.git
open BJHelper
```

## 该怎样去使用

目前示例中的ipa包均属于个人签名，故出现无法安装的现象，请大家按照以下步骤使用：

1. 应用分发需要有应用安装的plist文件和ipa包，所以先要准备这些文件，具体样式可参阅示例；
2. 将准备好的plist文件和ipa包按照自己的喜好导入到自己设置服务的根目录，默认目录为App，并配置好plist文件中的ipa包路径，目前服务的域名不可更改，具体配置可参阅示例应用的plist文件配置；
3. 以上步骤之后就可以运行BJHelper了，确定网络是打开的，点击本地目录的安装plist文件便可以安装应用了，应用安装必须在真机环境下进行。

## 最后

喜欢本项目的可以给我[加星](https://github.com/beijiahiddink/BJHelper/stargazers)哦！

## License

BJHelper is released under the MIT license. See [LICENSE](LICENSE) for details  