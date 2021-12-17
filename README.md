# myVimConfig
经测试，可用于 vim 7/8 

经验证的常用环境有 CentOS 7.6、8，UnionTechOS Server E

## 用法：
将 .vimrc 粘贴在家目录

将 .vim 目录解压粘贴在家目录

如果想使用 python 的 lint 功能，需要自行安装 flake8 `pip3 isntall flake8`

vim 目录中包含了 ale 和 nerdtree 两个插件，但鉴于我日常用 vim 的设备都是 ARM64 架构的机器，所以并不确定在 x86 架构机器上是否也能正常工作

注意： vim7 不支持 ale 带来的实时 lint 功能，对于 python 来说，有需要可以单独安装 `/nvie/vim-flake8` 插件，可以一键 lint 。其他语言应该也有类似的解决方案