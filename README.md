# 折腾Neovim记录

以前都是使用spf13作为vim的配置文件，随着使用的深入,冗长的配置文件越发感觉臃肿.随着学习的深入,我打算从零开始配置一款属于自己的Neovim

## neovim基本配置

### neovim安装

mac上使用brew进行安装:
`brew install neovim`

其他安装方式参考[Installing-Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)

### Python模块安装

安装neovim可以通过使用brew来安装,但是安装后还没结束,需要安装Python模块的支持

执行 `pip install neovim`

### 配置文件位置

与vim的区别

`~/.vimrc`对应`$XDG_CONFIG_HOME/nvim/init.vim`

`~/.vim`对应`$XDG_CONFIG_HOME/nvim`
