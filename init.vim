"项目使用vim-plug作为插件管理工具
"文档查看https://github.com/junegunn/vim-plug
call plug#begin('~/.local/share/nvim/plugged')
"in this place,you can add Plug what you want
"下面这个插件,可以在Normal与Insert模式之间自动切换输入法
"See https://github.com/CodeFalling/fcitx-remote-for-osx
Plug 'CodeFalling/fcitx-vim-osx'
"快速注释
"See https://github.com/scrooloose/nerdcommenter
Plug 'scrooloose/nerdcommenter'
"surround可以用来修改括号, 方括号, 标签等等包围在两边的元素
"See https://github.com/tpope/vim-surround
Plug 'git://github.com/tpope/vim-surround.git'
"for repeat -> enhance surround.vim, . to repeat command
Plug 'tpope/vim-repeat'
"模糊搜索文件
Plug 'ctrlpvim/ctrlp.vim'
"Vim mark标记
Plug 'kshenoy/vim-signature'
"EditorConfig的支持
Plug 'editorconfig/editorconfig-vim'
"启动对Emmet的支持
Plug  'mattn/emmet-vim'
"查看当前路径下的目录树
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" <F4> => popup the file tree navigation)
nmap <F4> :NERDTreeToggle<CR>
Plug 'altercation/vim-colors-solarized'
Plug 'airblade/vim-gitgutter'
"ack支持 <Leader>+a
Plug 'mileszs/ack.vim'
nnoremap <Leader>a :Ack!<Space>
"方便在buffer中快速切换的工具 <Leader>+be
Plug 'jlanzarotta/bufexplorer'
call plug#end()
"映射leader成  ,
let mapleader="\,"
"Can I use ag (The Silver Searcher) with this?
if executable('ag')
  "判断是否拥有ag支持
  let g:ackprg = 'ag --vimgrep'
endif
"插入模式自动转换成绝对行号，正常模式自动转换成相对行号
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber
" Fundamental settings
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
set fileformat=unix
set fileformats=unix,dos,mac
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
filetype on
filetype plugin on
filetype plugin indent on
syntax enable
"关闭单词拼写检查
set nospell
" Some useful settings
set smartindent
set expandtab         "tab to spaces
set tabstop=2         "the width of a tab
set shiftwidth=2      "the width for indent
"自动折叠没有必要
"set foldenable
"set foldmethod=indent "folding by indent
set ignorecase        "ignore the case when search texts
set smartcase         "if searching text contains uppercase case will not be ignored
" Lookings
:colorscheme solarized
let g:solarized_termcolors=256
let g:airline_theme='simple'
let g:airline#extensions#tabline#enabled = 1
" powerline font enable
let g:airline_powerline_fonts=1
set background=dark
set number           "line number
set nowrap           "no line wrapping

" buffer快速导航
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>n :bn<CR>
" 查看buffers
nnoremap <Leader>l :ls<CR>
" close buffer
nnoremap <Leader>w :bd<CR>
