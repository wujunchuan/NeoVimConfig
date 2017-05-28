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
  "快捷键位置原本为<Ctrl>+y 太远了,修改为<Ctrl>+e+,
  let g:user_emmet_leader_key='<C-E>'
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
"see https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'
  nmap ]] <Plug>GitGutterNextHunk
  nmap [[ <Plug>GitGutterPrevHunk
  nmap gua <Plug>GitGutterUndoHunk
  nmap gpr <Plug>GitGutterPreviewHunk
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
"Generate JSDoc to Javascript code
Plug 'heavenshell/vim-jsdoc'
  "移动光标到函数名称上,输入<Ctrl>+L即可快速完成注释
  nmap <silent> <C-l> <Plug>(jsdoc)
"显示缩进线,隐藏快捷键(<Leader>ig)
Plug 'nathanaelkane/vim-indent-guides'
  let g:indent_guides_start_level = 2
  let g:indent_guides_guide_size = 1
  let g:indent_guides_enable_on_vim_startup = 1
  let g:indent_guides_tab_guides = 0
"搭配Dash使用,查阅文档
Plug 'rizzatti/dash.vim'
  :nmap <silent> <leader>d <Plug>DashSearch
"代码片段插件
Plug 'SirVer/ultisnips'
  "在片段插入之后可以使用<Ctrl+k>前移
  let g:UltiSnipsJumpForwardTrigger="<c-k>"
  " Trigger configuration.
  " Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
  let g:UltiSnipsExpandTrigger="<c-k>"
  "在片段插入之后可以使用<Ctrl+j>后移
  let g:UltiSnipsJumpBackwardTrigger="<c-j>"
  "search path
"常见代码块集合
Plug 'honza/vim-snippets'
  " show Snipts files
  nnoremap <Leader>sni :UltiSnipsEdit!<CR>
call plug#end()
" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv
"允许多次多选编辑
"https://stackoverflow.com/questions/355907/how-do-i-repeat-an-edit-on-multiple-lines-in-vim/8064607#8064607
vnoremap . :normal .<CR>
"Can I use ag (The Silver Searcher) with this?
if executable('ag')
  "判断是否拥有ag支持
  let g:ackprg = 'ag --vimgrep'
endif
"See http://stackoverflow.com/questions/4775605/vim-syntax-highlight-improve-performance
"See http://www.55228885.com/Ljzenbgk.html
"improve performance
set nocursorcolumn
set nocursorline
set norelativenumber
syntax sync minlines=256
set synmaxcol=200 
set scrolljump=5
"插入模式自动转换成绝对行号，正常模式自动转换成相对行号
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber
" Fundamental settings
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
set fileformat=unix
set fileformats=unix,dos,mac
set incsearch " Find as you type search
set hlsearch  " Highlight search terms
filetype on
filetype plugin on
filetype plugin indent on
syntax enable
set mouse=a   " Automatically enable mouse usage
set mousehide " Hide the mouse cursor while typing
"关闭单词拼写检查
set nospell
" Some useful settings
set smartindent
set expandtab      " tab to spaces
set linespace=0    " No extra spaces between rows
set winminheight=1 " Windows can be 0 line high
"设置宽度为2
set tabstop=2    " the width of a tab
set shiftwidth=2 " the width for indent
set ignorecase   " ignore the case when search texts
set smartcase    " if searching text contains uppercase case will not be ignored
set list
set listchars=tab:>>,eol:¬,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
" close buffer
nnoremap <Leader>w :bd<CR>
"YouCompleteMe
let g:ycm_semantic_triggers = {
    \   'css': [ 're!^\s{4}', 're!:\s+'],
    \   'html': [ '</' ],
    \ }
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_min_num_of_chars_for_completion=2	" 从第2个键入字符就开始罗列匹配项
"set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
"跳转到定义处
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

"Vim外观设置
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
colorscheme one
set background=dark " for the dark version
" powerline font enable
let g:airline_powerline_fonts=1
set number           "line number
set wrap             "line wrapping
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='one'
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"设置补全框样式
highlight Pmenu ctermbg=75
highlight PmenuSel ctermbg=169
"定制 indent_guides 的样式
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=237
hi IndentGuidesEven ctermbg=235
"原先需要制定`+`/`*` register作为寄存器
"现在可以直接复制粘贴了
"See https://stackoverflow.com/questions/11489428/how-to-make-vim-paste-from-and-copy-to-systems-clipboard
if has('clipboard')
    if has('unnamedplus') " When possible use + register for copy-paste
        set clipboard=unnamed,unnamedplus
    else                  " On mac and Windows, use * register for copy-paste
        set clipboard=unnamed
    endif
endif
set nocursorline
:hi CursorLine   cterm=NONE ctermbg=240 ctermfg=white guibg=188 guifg=white
"使用<Leader>+cur来控制是否高亮当前行
:nnoremap <Leader>cur :set cursorline! cursorcolumn!<CR>

"See https://stackoverflow.com/questions/24720587/vim-with-youcompleteme-and-markdown
"YouCompleteMe的黑名单与白名单设置
"1为TRUE,0为FALSE
let g:ycm_filetype_blacklist={'notes': 1, 'markdown': 0, 'unite': 1, 'tagbar': 1, 'pandoc': 1, 'qf': 1, 'vimwiki': 1, 'text': 1, 'infolog': 1, 'mail': 1}
let g:ycm_filetype_blacklist = {}
" 定制`CtrlP`的忽略列表
" See https://github.com/kien/ctrlp.vim/issues/58
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|assets)|(\.(swp|ico|git|svn))$'
if filereadable(".ctrlpignore")
    let g:ctrlp_user_command = 'find %s -type f | grep -v "`cat .ctrlpignore`"'
endif
