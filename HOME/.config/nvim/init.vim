""""""""""""""""""""""""""""""""""""""
"
" 插件管理
" neovim 首先执行下面的命令安装
" 安装命令
" nvim +'call dein#install()'
"""""""""""""""""""""""""""""""""""""""
"filetype off                  " required


au BufRead,BufNewFile *.styl set filetype=stylus
au BufRead,BufNewFile *.pug set filetype=pug
au BufRead,BufNewFile *.coffee set filetype=coffee

set runtimepath+=/etc/vim/repos/github.com/Shougo/dein.vim

if dein#load_state('/etc/vim/dein')
  let g:dein#types#git#clone_depth = 1

  call dein#begin('/etc/vim/dein')
  call dein#add('yegappan/mru')        " 最近打开过的文件
  call dein#add('tomtom/tcomment_vim') " 批量注释
  call dein#add('ollykel/v-vim')
  call dein#add('Shougo/dein.vim')
  call dein#add('direnv/direnv.vim')
  call dein#add('rust-lang/rust.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
  call dein#add('neoclide/coc-vetur')
  call dein#add('vim-autoformat/vim-autoformat')
  call dein#add('ekalinin/Dockerfile.vim')
  call dein#add('cespare/vim-toml',{'on_ft':'toml'})
  call dein#add('ctrlpvim/ctrlp.vim')                  " 根据文件名和文件内容模糊搜索并打开文件
  call dein#add('dart-lang/dart-vim-plugin')
  call dein#add('codota/tabnine-vim')
  call dein#add('dyng/ctrlsf.vim')                           " 快速打开文件
  call dein#add('ervandew/supertab')                         " supertab 补全
  call dein#add('gkz/vim-ls',{'on_ft':'ls'}) " live script 语法高亮
  call dein#add('digitaltoad/vim-pug',{'on_ft':['pug','vue']})
  call dein#add('posva/vim-vue',{'on_ft':['vue','styl','stylus','pug']})
  call dein#add('kchmck/vim-coffee-script',{'on_ft':['coffee','vue']}) " Coffee-script语法高亮
  call dein#add('godlygeek/tabular')                         " 自动对齐
  call dein#add('haya14busa/vim-gtrans',{'on_ft':'markdown'})
  call dein#add('iloginow/vim-stylus')
  call dein#add('keith/swift.vim',{'on_ft':'swift'})
  call dein#add('meatballs/vim-xonsh')
  call dein#add('luochen1990/rainbow')                       " 彩虹括号，匹配的括号显示为同一颜色
  call dein#add('maksimr/vim-jsbeautify',{'on_ft':'js'})
  call dein#add('scrooloose/nerdtree')                       " 文件浏览
  call dein#add('urwork/ack.vim')                            " ag插件
  call dein#add('urwork/vim-indent-guides')
  call dein#add('vim-scripts/ctags.vim')                     " 生成Tag，跟TagList搭配
  call dein#add('vim-scripts/mako.vim',{'on_ft':'mako'})     " mako语法高亮
  call dein#add('vim-scripts/taglist.vim')        " 显示Tag
  call dein#add('w0rp/ale')                       " 异步语法检查
  call dein#end()
  call dein#save_state()
endif

"
" call vundle#begin()
" call vundle#end()
" call plug#begin('/etc/vim/runtime/plug')
" Plug 'Valloric/YouCompleteMe'                " 自动补全
" Plug 'Yggdroot/indentLine'                   " 垂直缩进对齐线
" Plug 'bling/vim-airline'                     " 底部状态栏
" Plug 'btyh17mxy/yapf.vim'
" Plug 'chrisbra/csv.vim'                      " CSV文件插件
" Plug 'edkolev/tmuxline.vim'                  " Airline支持tmux
" Plug 'floobits/floobits-neovim'              " 协作开发
" Plug 'google/yapf', { 'rtp': 'plugins/vim' }
" Plug 'gregsexton/MatchTag'                   " html标签匹配高亮
" Plug 'jlfwong/vim-mercenary'                 " hg插件，支持blame和diff
" Plug 'kballard/vim-swift'
" Plug 'ludovicchabant/vim-lawrencium'         " hg插件
" Plug 'mattn/emmet-vim'                       " zen-codeing
" Plug 'terryma/vim-multiple-cursors'          " 多光标选择
" Plug 'vim-scripts/matchit.zip'               " html标签跳转
"Plug 'cakebaker/scss-syntax.vim',{'for':'scss'}
"Plug 'stamblerre/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
"Plug 'wavded/vim-stylus' " live script 语法高亮
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" call plug#end()

filetype plugin indent on    " required

set nocompatible              " be iMproved, required
set mouse=

autocmd FileType xonsh set commentstring=#\ %s
autocmd FileType python set commentstring=#\ %s
autocmd FileType html set commentstring=#\ %s
autocmd FileType coffee set commentstring=#\ %s
autocmd FileType sh set commentstring=#\ %s
autocmd FileType conf set commentstring=#\ %s
autocmd FileType rust set commentstring=//\ %s

"if executable('ag')
"  let g:ackprg = 'ag --vimgrep'
"endif

" Put this in vimrc or a plugin file of your own.
" " After this is configured, :ALEFix will try and fix your JS code with
" ESLint.
let g:ale_linters = {
\  'go': ['gometalinter', 'gofmt'],
"\  'javascript': ['eslint'],
\  'python': ['flake8'],
\}
let g:ale_fixers = {
\   'python': ['yapf'],
\   'javascript': ['prettier'],
\}

let g:formatters_pug= ['prettier']

let g:formatdef_gopfmt = '"gop fmt"'
let g:formatters_go= ['gopfmt']

let g:formatdef_vfmt = '"v fmt -w"'
let g:formatters_vlang= ['vfmt']

let g:rustfmt_autosave = 1
let g:rust_recommended_style = 0
let g:rustfmt_options='--config-path ~/.config/rustfmt/rustfmt.toml'


"
" " Set this setting in vimrc if you want to fix files automatically on save.
" " This is off by default.
let g:ale_fix_on_save = 1
let g:ale_sign_warning = ' !'
let g:ale_sign_error = ' ✕'

let g:ale_echo_msg_error_str = '❌'
let g:ale_echo_msg_warning_str = '🔥'
let g:ale_echo_msg_format = '%severity% %linter% → %s '



"""""""""""""""""""""""""""""""""""""""
"
"            自定义函数
"
"""""""""""""""""""""""""""""""""""""""
func RunPy2InPy3()
    call system("2to3-3.9 --fix=print --nobackups" . expand('%') . " -w &> /dev/null")
    exec ":e %"
    exec "!python3 %"
endfunc

func FormatRun()
  if &buftype == "terminal"
    call nvim_input('ii')
  else
    exec "w"
    exec "vsp"
    exec "wincmd l"
    exec "set nonu"
    if &filetype == 'coffee'
      exec "term coffee %"
    endif
    "运行python
    if &filetype == 'html'
      call HtmlBeautify()
    endif
    if &filetype == 'py'||&filetype == 'python'
      call RunPy2InPy3()
    endif
    if &filetype == 'xonsh'
      exec "term xonsh %"
    endif
    if &filetype == 'ls'
      exec "term node -r livescript-transform-implicit-async/register %"
    endif
    if &filetype == 'go'
      exec "term qrun %"
    endif
    if &filetype == 'sh'
      exec "term bash %"
    endif
    if &filetype == 'js'||&filetype == 'javascript'
      exec "term node %"
    endif
  endif
endfunc

"定义FormartSrc()
func FormartSrc()
    exec "w"
    if &filetype == 'stylus'
      exec "silent !stylus-supremacy format % --options ~/.config/supremacy.yaml --outDir $(dirname %s)"
    elseif &filetype == 'xml'
        exec "silent !astyle --style=gnu --suffix=none %"
    endif
    exec "e! %"
endfunc
"结束定义FormartSrc


"""""""""""""""""""""""""""""""""""""""
"
"            基本配置外观配置
"
"""""""""""""""""""""""""""""""""""""""
syntax on
syntax enable
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set nocompatible
set number              "左侧显示行号
"set ruler               "底部显示行列号
set expandtab
set hlsearch            "搜索时匹配项高亮显示
"set autoindent          "新行自动缩进
set cindent             "C语言风格缩进
set showcmd             "命令行模式按tab补全命令
set wildmenu            "命令行模式按tab补全命令
"根据缩进折叠代码
set fdm=indent
"python文件模板
autocmd BufNewFile *.py 0r /etc/vim/bundle/template/vim.py
autocmd BufNewFile *.vue 0r /etc/vim/bundle/template/vim.vue
autocmd BufNewFile *.ls 0r /etc/vim/bundle/template/vim.ls
autocmd BufNewFile *.coffee 0r /etc/vim/bundle/template/vim.coffee
retab

"""""""""""""""""""""""""""""""""""""""
"
"            ctrlp设置
"
"""""""""""""""""""""""""""""""""""""""
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](node_modules|dist|\.(dist|git|hg|svn))$',
    \'file' : '\v\.(pyc|html\.py|swp|map)$',
\}


"""""""""""""""""""""""""""""""""""""""
"
"            nerdtree设置
"
"""""""""""""""""""""""""""""""""""""""
let NERDTreeIgnore=['\.pyc$', '\~$', '__pycache__$']
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif




"""""""""""""""""""""""""""""""""""""""
"
"        Taglist and Ctags
"
"""""""""""""""""""""""""""""""""""""""
let Tlist_Show_One_File = 1 "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim
"let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist窗口
let Tlist_File_Fold_Auto_Close = 1
"只显示当前文件tag，其它文件的tag都被折叠起来
"set tags=/andes/project/mkdemo/src/tags
"F12生成/更新tags文件
set tags=tags;
"set autochdir
"nmap <F12> :call UpdateTagsFile()<CR>

"设置F12快捷键 自动生成当前目录tags文件
function! UpdateTagsFile()
  silent !ctags -R --fields=+ianS --extra=+q
endfunction


"""""""""""""""""""""""""""""""""""""""
"
"               airline
"
"""""""""""""""""""""""""""""""""""""""
set laststatus=2
"let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:tmuxline_separators = {
            \ 'left' : '',
            \ 'left_alt': '>',
            \ 'right' : '',
            \ 'right_alt' : '<',
            \ 'space' : ' '}


"""""""""""""""""""""""""""""""""""""""
"
"            ycm setting
"
"""""""""""""""""""""""""""""""""""""""
"let g:ycm_global_ycm_extra_conf =  '~/.vim/bundle/YouCompleteMe/cpp/ycm/yum_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_confirm_extra_conf = 0
"let g:ycm_server_keep_logfiles = 1     "写入日志文件
"let g:ycm_server_log_level = 'debug'       "打开调试模式
"""""""""""""""""""""""""""""""""""""""
"
"            autopep8自动格式化设置
"
"""""""""""""""""""""""""""""""""""""""
let g:autopep8_disable_show_diff=1

"""""""""""""""""""""""""""""""""""""""
"
"               颜色主题
"
"""""""""""""""""""""""""""""""""""""""


hi Boolean ctermfg=141
hi Character ctermfg=222
hi ColorColumn ctermbg=236
hi Conditional ctermfg=64
hi Constant ctermfg=121 cterm=bold
hi Cursor ctermfg=16 ctermbg=253
hi CursorColumn ctermbg=236
hi CursorLine ctermbg=240 cterm=none
hi CursorLineNr ctermfg=208 cterm=none
hi Debug ctermfg=225 cterm=bold
hi Define ctermfg=81
hi Delimiter ctermfg=241
hi DiffAdd ctermbg=24
hi DiffChange ctermfg=181 ctermbg=239
hi DiffDelete ctermfg=125 ctermbg=233
hi DiffText ctermbg=102 cterm=bold
hi Directory ctermfg=154 cterm=bold
hi Error ctermfg=219 ctermbg=89
hi ErrorMsg ctermfg=199 ctermbg=16 cterm=bold
hi Exception ctermfg=64 cterm=bold
hi Float ctermfg=141
hi FoldColumn ctermfg=67 ctermbg=16
hi Folded ctermfg=67 ctermbg=16
hi Function ctermfg=154
hi Identifier ctermfg=208 cterm=none
hi Ignore ctermfg=244 ctermbg=232
hi IncSearch ctermfg=193 ctermbg=16
hi Keyword ctermfg=197 cterm=bold
hi Label ctermfg=229 cterm=none
hi LineNr ctermfg=239 ctermbg=none
hi Macro ctermfg=193
hi MatchParen ctermfg=233 ctermbg=208 cterm=bold
hi MoreMsg ctermfg=229
hi NonText ctermfg=59
hi Normal ctermfg=252 ctermbg=none
hi Number ctermfg=148
hi Pmenu ctermfg=81 ctermbg=16
hi PmenuSbar ctermbg=232
hi PmenuSel ctermfg=255 ctermbg=242
hi PmenuThumb ctermfg=81
hi PreCondit ctermfg=118 cterm=bold
hi PreProc ctermfg=118
hi Question ctermfg=81
hi Operator ctermfg=64
hi SpecialChar ctermfg=64 cterm=bold
hi Repeat ctermfg=64 cterm=bold
hi Statement ctermfg=64 cterm=bold
hi Tag ctermfg=64
hi keyword ctermfg=64 cterm=bold
hi Search ctermfg=0 ctermbg=222 cterm=NONE
hi SignColumn ctermfg=118 ctermbg=235
hi Special ctermfg=81
hi SpecialComment ctermfg=245 cterm=bold
hi SpecialKey ctermfg=239
hi StatusLine ctermfg=238 ctermbg=253
hi StatusLineNC ctermfg=244 ctermbg=232
hi StorageClass ctermfg=208
hi String ctermfg=144
hi Structure ctermfg=81
hi Title ctermfg=166
hi Todo ctermfg=231 ctermbg=232 cterm=bold
hi Type ctermfg=81 cterm=none
hi Typedef ctermfg=81
hi Underlined ctermfg=244 cterm=underline
hi VertSplit ctermfg=244 ctermbg=232 cterm=bold
hi Visual ctermbg=238
hi VisualNOS ctermbg=238
hi WarningMsg ctermfg=231 ctermbg=238 cterm=bold
hi WildMenu ctermfg=81 ctermbg=16
hi Comment ctermfg=59
hi ALEError ctermfg=9 ctermbg=235 
hi ALEWarning ctermfg=11 ctermbg=235 
hi ALEInfo   ctermfg=14 ctermbg=235 
hi CocUnusedHighlight ctermfg=247 ctermbg=234

"set cursorline                         "光标所在行高亮
set t_Co=256
set background=dark

highlight nonText ctermbg=NONE

let g:rainbow_active = 1    "彩虹括号

"""""""""""""""""""""""""""""""""""""""
"
"           解决长行文本变卡
"
"""""""""""""""""""""""""""""""""""""""
"set synmaxcol=128
set ttyfast
"set ttyscroll=3
set lazyredraw
"""""""""""""""""""""""""""""""""""""""
"
"               快捷键
"
"""""""""""""""""""""""""""""""""""""""
"解决组合快捷键导致某些快捷键变卡的问题
"例如如果map了np, 就会导致搜索n有一个很长的反应时间
set timeoutlen=200
nmap <F12> :call FormatRun()<CR>
"map <F10> :SyntasticCheck pyflakes<CR>
"map <F9> :SyntasticCheck python<CR>
"map <F8> :res-1<CR>
"map <F7> :res+1<CR>
"map <F6> :vertical res-1<CR>
"map <F5> :vertical res+1<CR>
"map <F4> :call FormartSrc()<CR>
"map <F3> :set paste<CR>
"map <F2> :set nopaste<CR>
"ag搜索


let g:ctrlsf_auto_focus = {
    \ "at": "done",
    \ "duration_less_than": 1000
    \ }

nmap tt :NERDTreeToggle<cr>
nmap mr :MRU<cr>
"nmap tl :TlistToggle<cr>
"nmap bn :bn<cr>
"nmap bp :bp<cr>
"nmap ne :lnext<cr>
"nmap pe :lprev<cr>


autocmd BufWritePre *.styl :call FormartSrc()


autocmd BufWritePre *.py :%s/^\(\s*print\)\s\+\(.*\)/\1(\2)/e
autocmd BufWritePre *.{md,vue,ls,cpp,c,d,rs,slm,py,coffee,conf,html,sh,scss,css,js,pug,xsh,styl} :%s/\t/  /ge
autocmd BufWritePre *.{md,toml,zsh,txt,cpp,c,d,rs,slm,py,coffee,conf,html,sh,scss,css,js,vue,sass,pug,xsh,styl} :%s/\s\+$//e
au BufWritePre *.{v,py,proto,json,go,js,html,scss,css,pug,dart} :Autoformat
autocmd FileType vue syntax sync fromstart
autocmd BufWritePre *.vue :syntax sync fromstart


let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']
let g:vue_pre_processors = ['pug','coffee','stylus','styl']

set backupcopy=yes
set nofoldenable
set viminfo='100,<10000,s1000,h

let html_no_rendering=1

let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup = 1
let g:go_metalinter_command="golangci-lint"
set ts=2 sw=2 expandtab softtabstop=2
autocmd FileType python setlocal et sta sw=2 sts=2
autocmd FileType xonsh setlocal et sta sw=2 sts=2


nmap ag :AG <C-R><C-W><CR>
nmap ss :CtrlSF <C-R><C-W><CR>
vnoremap ss y:CtrlSF <C-R>"<CR>
"vnoremap <Tab> :Tab /
vnoremap <Tab>: :Tab /:<CR>
vnoremap <Tab>, :Tab /,<CR>
vnoremap <Tab>= :Tab /=<CR>
vnoremap <c-f> y<ESC>/<c-r>"<CR>

set backspace=2
vnoremap <Tab> :'<,'>TComment <CR>
