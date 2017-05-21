"映射leader成  ,
let mapleader="\,"

"项目使用vim-plug作为插件管理工具
"文档查看https://github.com/junegunn/vim-plug
call plug#begin('~/.local/share/nvim/plugged')
"in this place,you can add Plug what you want
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
  "快捷键位置原本为<Ctrl>+y 太远了,修改为<Ctrl>+k
  let g:user_emmet_leader_key='<C-K>'
  let g:user_emmet_install_global = 0
  "Enable just for html/css 随着文件类型的丰富,修改这里,启动Emmet
  autocmd FileType html,css EmmetInstall
"查看当前路径下的目录树
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
  "<F4> => popup the file tree navigation)
  nmap <F4> :NERDTreeToggle<CR>
Plug 'altercation/vim-colors-solarized'
"You can jump between hunks with [c and ]c. You can preview, stage, and undo hunks with <leader>hp, <leader>hs, and <leader>hu respectively.
"see https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'
  nmap ]a <Plug>GitGutterNextHunk
  nmap [a <Plug>GitGutterPrevHunk
"搜索项目中出现的关键词
Plug 'mileszs/ack.vim'
  "ack支持 <Leader>+ack
  nnoremap <Leader>ack :Ack!<Space>
"方便在buffer中快速切换的工具 <Leader>+be
Plug 'jlanzarotta/bufexplorer'
"辅助Airline查看当前Git Branch
Plug 'tpope/vim-fugitive'
"Tagbar is a Vim plugin that provides an easy way to browse the tags of the current file and get an overview of its structure
Plug 'majutsushi/tagbar'
  nmap <F8> :TagbarToggle<CR>
"用于代码对齐的神器
"See https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
  " Start interactive EasyAlign in visual mode (e.g. vipga)
  xmap ga <Plug>(EasyAlign)
  " Start interactive EasyAlign for a motion/text object (e.g. gaip)
  nmap ga <Plug>(EasyAlign)
"可以将不同的词标成不同的颜色, 比如标记在变量名上, 就很方便
":MarkClear可以清除所有的标记
Plug 'vim-scripts/Mark--Karkat'
"代码补齐神器
Plug 'Valloric/YouCompleteMe'
"自动闭合
"使用<Leader>+a可以关闭AutoClose的功能
Plug 'vim-scripts/AutoClose'
"tern补全JavaScript插件
Plug 'ternjs/tern_for_vim'
"css语法高亮
Plug 'hail2u/vim-css3-syntax'
"less语法高亮
Plug 'groenewege/vim-less'
"JavaScript语法高亮
Plug 'pangloss/vim-javascript'
"高亮色块
Plug 'gko/vim-coloresque'
"One主题
Plug 'rakr/vim-one'
"检索项目中的所有TODOLIST
Plug 'vim-scripts/TaskList.vim'
call plug#end()
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
set ignorecase        "ignore the case when search texts
set smartcase         "if searching text contains uppercase case will not be ignored

" close buffer
nnoremap <Leader>w :bd<CR>


"YouCompleteMe
let g:ycm_semantic_triggers = {
    \   'css': [ 're!^\s{4}', 're!:\s+'],
    \   'html': [ '</' ],
    \ }
"Vim外观设置
colorscheme one
set background=dark " for the dark version
" powerline font enable
let g:airline_powerline_fonts=1
set number           "line number
set nowrap           "no line wrapping
let g:airline#extensions#tabline#enabled = 1
set t_8b=^[[48;2;%lu;%lu;%lum
set t_8f=^[[38;2;%lu;%lu;%lum
let g:airline_theme='one'
