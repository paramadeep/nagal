call pathogen#infect()
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set hlsearch
set incsearch

if has("autocmd")
  autocmd FileType ruby setlocal omnifunc=syntaxcomplete#Complete
  autocmd FileType ruby let g:rubycomplete_buffer_loading=1
  autocmd FileType ruby let g:rubycomplete_classes_in_global=1
endif
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent

"http://vimcasts.org/episodes/running-vim-within-irb/
if has("autocmd")
    " Enable filetype detection
    filetype plugin indent on
          " Restore cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif
if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif

set wildmode=full
set laststatus=2 "always display status
set number
highlight LineNr ctermbg=black

"https://github.com/scrooloose/nerdtree
"close the window
"autocmd vimenter * NERDTree
"autocmd VimEnter * wincmd p
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let mapleader = ","
nmap <leader>n :NERDTreeFind<cr>
nmap <leader>mv :Rview<space>
nmap <leader>mh :Rhelper<space>
nmap <leader>mm :Rmodel<space>
nmap <leader>mi :Rmigration<space>
nmap <leader>mc :Rcontroller<space>
nmap <leader>md :Rake db:
nmap <leader>ms :Rstylesheet<space>
nmap <leader>mj :Rjavascript<space>
nmap <leader>mf :Rfixture<space>
nmap <leader>mg :Rgenerate<space>
nmap <leader>mr :e config/routes.rb<cr>
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
nmap <leader>e :e<space>
nmap <leader>1 :!<space>
nmap <leader>s :%s///g
nmap <c-f> :Ack<space>
nmap <leader>f gg=G:w<cr>
nmap <c-e> :MRU<cr>

"https://github.com/tpope/vim-fugitive#fugitivevim
nmap <leader>gs :Gstatus<cr>
nmap <leader>gc :Gcommit<space>
nmap <leader>gb :Gblame<space>
nmap <leader>gd :Gdiff<space>
nmap <leader>gph :Git<space>push<cr>
nmap <leader>gpl :Git<space>pull<cr>

"http://stackoverflow.com/questions/6053301/easier-way-to-navigate-between-vim-split-panes
nmap <silent> <c-k> :wincmd k<CR>                                                                                                           
nmap <silent> <c-j> :wincmd j<CR>            
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
" Move the splits arround!
nmap <silent> <c-s-k> <C-W>k
nmap <silent> <c-s-j> <C-W>j
nmap <silent> <c-s-h> <C-W>h
nmap <silent> <c-s-l> <C-W>l

"sudo ln -sf /usr/bin/ack-grep /usr/local/bin/ack

"CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_user_command = 'find %s -type f' 

"git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
"git submodule init
"git submodule update
"git submodule foreach git pull origin master
"
:set spell
hi clear SpellBad
hi SpellBad cterm=underline

":set paste

"https://github.com/scrooloose/nerdtree#faq
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

