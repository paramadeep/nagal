set nocompatible      " We're running Vim, not Vi!
call plug#begin('~/.vim/plugged')
Plug 'xolox/vim-lua-ftplugin'
Plug 'AutoComplPop'
Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'scrooloose/nerdtree'
Plug 'janko-m/vim-test'
Plug 'scrooloose/nerdcommenter'
Plug '907th/vim-auto-save'
Plug 'chase/vim-ansible-yaml'
Plug 'guns/vim-sexp' 
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-fugitive'
Plug 'flowtype/vim-flow'
call plug#end()

filetype plugin indent on
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection

set hlsearch
set incsearch

set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent

set wildmode=full
set wildmenu 
set laststatus=2 "always display status
highlight LineNr ctermbg=black

set ruler

map ft :w<CR>:TestFile<CR>
map fs :w<CR>:TestNearest<CR>
map fp :w<CR>:TestLast<CR>
map fa :w<CR>:TestSuite<CR>

map <F2> obinding.pry<ESC>:w<CR>

let mapleader = ";"
nmap <leader>e :e<space>
nmap m :bnext<CR>
nmap t :bprevious<CR>
nmap <leader>q :bp <BAR> bd #<CR>
nmap fn :NERDTreeFind<cr>
nmap fw :w<cr>
nmap fq :q<cr>
nmap fg :Ag<space>""
nmap f1 :!<space>
nmap <leader>s :%s///g
nmap fr :!ag -r -l  *\| xargs sed -i -e 's///g'
nmap ff gg=G:w<cr><c-o><c-o>
nmap fx :set invnumber<cr>
nmap fz :NERDTreeToggle<cr>
"https://github.com/tpope/vim-fugitive#fugitivevim
nmap gs :Gstatus<cr>
nmap gc :Gcommit<space>-m ""
nmap gb :Gblame<cr>
nmap gd :Gdiff<cr>
nmap gp :Git<space>push<cr>
nmap gl :Git<space>pull<cr>
nmap gm :Git<space>commit<space>--amend<space>-m<space>""
nmap ga :Git<space>add<space>%<cr>
nmap g] <Plug>GitGutterNextHunk
nmap g[ <Plug>GitGutterPrevHunk
nmap gt <Plug>GitGutterStageHunk
nmap gh <Plug>GitGutterUndoHunk
"http://stackoverflow.com/questions/6053301/easier-way-to-navigate-between-vim-split-panes
nmap fk :wincmd k<CR>
nmap fj :wincmd j<CR>            
nmap fh :wincmd h<CR>
nmap fl :wincmd l<CR>

nmap <silent> fe :CtrlPMRU <CR>
nmap <silent> fo :CtrlP <CR>
let g:ctrlp_match_window = 'order:ttb'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_user_command = 'ag %s -l -g ""'
let g:ctrlp_mruf_relative = 1

"spelling
:set spell
hi clear SpellBad
hi SpellBad cterm=underline

"https://github.com/vim-scripts/vim-auto-save
let g:auto_save = 1 
let g:auto_save_no_updatetime = 0 
let g:auto_save_silent = 1
let g:auto_save_in_insert_mode = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]

"https://github.com/scrooloose/nerdtree#faq 
"autocmd vimenter * NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif
"autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"http://vim.wikia.com/wiki/Format_your_xml_document_using_xmllint
"au FileType xml exe html svg ":silent %!xmllint --format --recover - 2>/dev/null"

set backspace=indent,eol,start

set mouse=a
set clipboard=unnamed

let g:NERDTreeIndicatorMapCustom = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "✗",
      \ "Clean"     : "✔︎",
      \ "Unknown"   : "?"
      \ }

let g:jsx_ext_required = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

if executable('ag')
    let g:unite_source_rec_async_command = 'ag --nocolor --nogroup --hidden -g ""'
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts = '--nocolor --nogroup --hidden'
    let g:unite_source_grep_recursive_opt=''
endif

" ruby path if you are using rbenv
let g:ruby_path = system('echo $HOME/.rbenv/shims')

" http://stackoverflow.com/a/16920294/1520443
set re=1

set ttyfast
set lazyredraw

" CocoaPods
au BufNewFile,BufRead Podfile,*.podspec      set filetype=ruby

let g:gitgutter_sign_column_always = 1
highlight clear SignColumn

"folding settings http://smartic.us/2009/04/06/code-folding-in-vim/
"set foldmethod=indent   "fold based on indent
"set foldnestmax=10      "deepest fold is 10 levels
"set nofoldenable        "dont fold by default
"set foldlevel=1         "this is just what i use

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:flow#enable = 0
