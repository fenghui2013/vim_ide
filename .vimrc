"""""""""""""""""""""""""""""""""""""
"general config
"""""""""""""""""""""""""""""""""""""
"检测文件类型
filetype on
"针对不同的文件类型采用不同的缩进格式
filetype indent on
"允许插件
filetype plugin on
"启动自动补全
filetype plugin indent on
set completeopt=longest,menu
"自动补全时采用菜单式命令列表
set wildmenu

"显示行号
set number
"取消换行
set nowrap
"括号配对情况
set showmatch
set mat=2
"高亮search命中的文本
set hlsearch
"搜索时忽略大小写
set ignorecase
"随着键入即时搜索
set incsearch
"有一个或以上大写字母时仍大小写敏感
set smartcase

"设置Tab键的宽度[等同的空格个数]
set tabstop=4
set shiftwidth=4
"将tab自动转化为空格
set expandtab
"按退格键可以一次删掉4个空格
set softtabstop=4
"设置匹配模式，类似当输入一个左括号时匹配相应的右括号
set showmatch

"""""""""""""""""""""""""""""""""""""
"python ide config
"""""""""""""""""""""""""""""""""""""
"python文件的一般设置，比如不要tab等
"autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
"自动补全配置
autocmd FileType python set omnifunc=pythoncomplete#Complete
"pydiction
let g:pydiction_location = '~/.vim/tools/pydiction/complete-dict'
let g:pydiction_menu_height = 15

"""""""""""""""""""""""""""""""""""""
"javascript ide config
"""""""""""""""""""""""""""""""""""""
autocmd FileType javascript set omnifunc=javacomplete#CompleteJS

"""""""""""""""""""""""""""""""""""""
"html ide config
"""""""""""""""""""""""""""""""""""""
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

"""""""""""""""""""""""""""""""""""""
"css ide config
"""""""""""""""""""""""""""""""""""""
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"""""""""""""""""""""""""""""""""""""
"xml ide config
"""""""""""""""""""""""""""""""""""""
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags

"""""""""""""""""""""""""""""""""""""
"java ide config
"""""""""""""""""""""""""""""""""""""
autocmd FileType java set omnifunc=javacomplete#Complete

"""""""""""""""""""""""""""""""""""""
"ctags config
"""""""""""""""""""""""""""""""""""""
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"""""""""""""""""""""""""""""""""""""
"taglist config
"""""""""""""""""""""""""""""""""""""
let Tlist_Auto_Open = 0                     "手动打开taglist
let Tlist_Show_One_File = 1                 "只显示当前文件的tag
let Tlist_Exit_OnlyWindow = 1               "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 0              "在左侧窗口中显示taglist窗口
let Tlist_WinWidth = 50                     "taglist窗口的宽度
let Tlist_Sort_Type = 'name'                "taglist以tag名字进行排序
let Tlist_File_Fold_Auto_Close = 1          "只显示当前文件的tag
let Tlist_Process_File_Always = 0           "如果为1，则taglsit会始终解析文件中的tag，而不管有没有打开
let Tlist_Use_Horiz_Window = 0              "竖直显示taglist
"shortcuts
nnoremap <silent> <F8> :TlistToggle<CR>

"""""""""""""""""""""""""""""""""""""
"cscope config
"""""""""""""""""""""""""""""""""""""
set cscopequickfix=s-,c-,d-,i-,t-,e-

"""""""""""""""""""""""""""""""""""""
"OmniCppComplete config
"""""""""""""""""""""""""""""""""""""

set nocp
filetype plugin on

"""""""""""""""""""""""""""""""""""""
"winmanager config
"""""""""""""""""""""""""""""""""""""

let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout="NERDTree|TagList"

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

nmap wm :WMToggle<CR>

"设置session
set sessionoptions=buffers,curdir,folds,help,options,tabpages,winpos,winsize
function! SessionSave()
    exec 'mks! mysession.vim'
    exec 'wqa'
endfunction

nmap qqq :call SessionSave()<CR>


"encoding
let &termencoding=&encoding
set fileencodings=utf-8,gbk
