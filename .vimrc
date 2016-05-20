set nocompatible      " We're running Vim, not Vi!
filetype off
"https://github.com/gmarik/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'nginx.vim'
Plugin 'xolox/vim-lua-ftplugin'
Plugin 'AutoComplPop'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-rails'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'scrooloose/nerdtree'
Plugin 'skalnik/vim-vroom'
Plugin 'scrooloose/nerdcommenter'
Plugin '907th/vim-auto-save'
Plugin 'chase/vim-ansible-yaml'
Plugin 'derekwyatt/vim-scala'
Plugin 'thoughtbot/vim-rspec'
Plugin 'docunext/closetag.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'shime/vim-livedown'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"Plugin 'guns/vim-clojure-static'
"Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-sexp'
Plugin 'einars/js-beautify'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'fatih/vim-go'
Plugin 'tfnico/vim-gradle'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'scrooloose/syntastic'
"javascript
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'moll/vim-node'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'SirVer/ultisnips'
"Plugin 'Valloric/YouCompleteMe'
call vundle#end()

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

map ft :w<CR>:VroomRunTestFile<CR>
map fs :w<CR>:VroomRunNearestTest<CR>
map fp :w<CR>:VroomRunLastTest<CR>
map fa :w<CR>:call RunAllSpecs()<CR>

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
nmap ga :Git<space>add<space>.<cr>
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

map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
"vroom
let g:vroom_map_keys = 0
let g:vroom_cucumber_path = "cucumber -r features "

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

"disable vroom default key map
let g:vroom_map_keys = 0

"disable folding for md
let g:vim_markdown_folding_disabled=1

au BufRead,BufNewFile /etc/nginx/*,/usr/local/etc/nginx/* if &ft == '' | setfiletype nginx | endif 

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
