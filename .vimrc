set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Set mapleader
let mapleader = ','
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion"
set cursorline               "设置光标高亮显示
set cursorcolumn             "光标垂直高亮
set mouse=a                  "鼠标滚动
set ttyfast
set ruler

"使用,w来垂直分割窗口，这样可以同时查看多个文件,如果想水平分割则<c-w>s
nmap <leader>W <c-w>v<c-w>l
nmap <leader>wc <c-w>c
nmap <leader>ww <c-w>w
" Quickly close the current window
nnoremap <leader>q :q<CR>
" " Quickly save the current file
nnoremap <leader>w :w<CR>
Bundle 'gmarik/vundle'
"主题 molokai
Bundle 'Solarized'
Bundle 'Valloric/YouCompleteMe'
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
"youcompleteme  默认tab  s-tab 和自动补全冲突
""let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> 

syntax enable 
set background=dark
colorscheme solarized
"CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
syn on "语法支持
set laststatus=2 "始终显示状态栏
set tabstop=4 "一个制表符的长度
set softtabstop=4 "一个制表符的长度（可以大于tabstop）
set shiftwidth=4 "一个缩进的长度
set smarttab "智能制表符
set backspace=indent,eol,start
set autoindent "自动缩进
set smartindent "只能缩进
set number "显示行号
set ruler "显示位置指示器
set backupdir=/tmp "设置备份文件目录
set directory=/tmp "设置临时文件目录
set ignorecase "检索时忽略大小写
set hls "检索时高亮显示匹配项
set helplang=cn "帮助系统设置为中文
set foldmethod=syntax "代码折叠
Bundle 'AutoClose'
Bundle 'Lokaltog/vim-easymotion'
  let g:EasyMotion_smartcase = 0
    let g:EasyMotion_do_mapping = 0 " Disable default mappings
      nmap s <Plug>(easymotion-s)
        nmap S <Plug>(easymotion-s2)
          map <Leader>j <Plug>(easymotion-j)
            map <Leader>k <Plug>(easymotion-k)
Bundle 'The-NERD-tree'
  "设置相对行号
    nmap <leader>nt :NERDTree<cr>:set rnu<cr>
      let NERDTreeShowBookmarks=1
        let NERDTreeShowFiles=1
          let NERDTreeShowHidden=1
            let NERDTreeIgnore=['\.$','\~$']
              let NERDTreeShowLineNumbers=1
                let NERDTreeWinPos=1
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType)

Bundle 'The-NERD-Commenter'
  let NERDShutUp=1
    "支持单行和多行的选择，//格式
      map <c-h> ,c<space>
Bundle 'UltiSnips'
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file
Bundle 'honza/vim-snippets'
Bundle "ayang/AutoComplPop"
            "放置在Bundle的设置后，防止意外BUG
            filetype plugin indent on
            syntax on
nmap <leader>p :!python %<CR>
