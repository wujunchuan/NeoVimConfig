# 折腾Neovim记录

![项目运行图](http://static.caogfw.cn/JohnTrump/2017-05-21-105256.jpg)

以前都是使用spf13作为vim的配置文件，随着使用的深入,冗长的配置文件越发感觉臃肿.随着学习的深入,我打算从零开始配置一款属于自己的Neovim

## neovim基本配置

### neovim安装

mac上使用brew进行安装:
`brew install neovim`

其他安装方式参考:[Installing-Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)

### Python模块安装

安装neovim可以通过使用brew来安装,但是安装后还没结束,需要安装Python模块的支持

执行 `pip install neovim`

### 配置文件位置

与vim的区别

`~/.vimrc`对应`$XDG_CONFIG_HOME/nvim/init.vim`

`~/.vim`对应`$XDG_CONFIG_HOME/nvim`

### 检查Neovim环境健康

使用`:CheckHealth` 可以查看一些基本配置是否正常

![](http://static.caogfw.cn/JohnTrump/2017-05-20-123211.jpg)

### 插件管理

本项目使用`vim-plug`作为插件管理工具

[仓库地址](https://github.com/junegunn/vim-plug)

常见操作:

安装插件列表中的插件:`PlugInstall`
删除插件列表中无用的插件:`PlugClean`

### 安装的插件列表

- vim-fugitive
- emmet-vim
- bufexplorer
- vim-colors-solarized
- vim-repeat
- fcitx-vim-osx
- nerdtree
- nerdtree-git-plugin
- vim-airline-themes
- vim-surround
- ack.vim
- vim-signature
- vim-gitgutter
- ctrlp.vim
- vim-airline
- nerdcommenter
- editorconfig-vim

### 安装YouCompleteMe(YCM)

我们常用的omnicppcompleter,acp,vim自带的c-x, c-n的实现方式就是基于文本。通俗的讲就是**基本靠猜**

> 原理: 通过对文本进行一些正则表达式的匹配,生成tags,以达到自动补齐的效果



YCM则是通过**语义分析**来进行代码补全的,基于语义分析补全可以很精准.

由于语法分析有很高的难度，也一直没有合适的工具出现。直到，由apple支持的clang/llvm横空出世。

YouCompleteMe也正是在clang/llvm的基础上进行构建的

#### 快速安装步骤

1. 在`init.vim`中添加 `Plug 'Valloric/YouCompleteMe'
`

2. 打开Neovim,输入`:PlugInstall`,安装YouCompleteMe

3. `cd ~/.local/share/nvim/plugged/YouCompleteMe`


4. `./install --clang-completer`
如果不需要C系家族语言的补全支持,直接执行`./install`

> 编译安装步骤请看项目文档
> 
> [Full-Installation-Guide](https://github.com/Valloric/YouCompleteMe#full-installation-guide)

#### 定义snip

使用`UltiSnips`来定义Snipt

```
snippet 关键词 “说明” 设定
内容
endsnippet
```

##### UltiSnips的设定

- `b` 代表只有关键词出现在行首的时候才会被展开
- `A` 代表自动展开
- `w` 代表可以展开这个词,这个关键词是单独的,和其他文字分开的(比如前后都是空格)
- `i` 代表可以忽略前后字节,直接展开关键词(这个设定比`w`更为松)

其他命令通过`:help ultisnip`查看

##### 搜索路径

可以通过配置来指定Snipt搜索的路径

当前配置的路径为:


`~/.local/share/nvim/plugged/vim-snippets/UltiSnips`及` ~/.config/nvim/UltiSnips `
