set nocompatible      " We're running Vim, not Vi!

"https://github.com/gmarik/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'scratch.vim'
Plugin 'AutoComplPop'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-obsession'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'scrooloose/nerdtree'
Plugin 'skalnik/vim-vroom'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'digitaltoad/vim-jade'
Plugin 'vim-scripts/jade.vim'
Plugin 'chase/vim-ansible-yaml'
Plugin 'derekwyatt/vim-scala'
Plugin 'thoughtbot/vim-rspec'
Plugin 'docunext/closetag.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'paramadeep/Conque'
Plugin 'shime/vim-livedown'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-sexp'
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
set laststatus=2 "always display status
highlight LineNr ctermbg=black

map ft :w<CR>:VroomRunTestFile<CR>
map fs :w<CR>:VroomRunNearestTest<CR>
map fp :w<CR>:VroomRunLastTest<CR>
map fa :w<CR>:call RunAllSpecs()<CR>

map <F2> obinding.pry<ESC>:w<CR>

let mapleader = ";"
nmap <leader>e :e<space>
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

"vroom
let g:vroom_map_keys = 0
let g:vroom_cucumber_path = "cucumber"

"spelling
:set spell
hi clear SpellBad
hi SpellBad cterm=underline

"https://github.com/vim-scripts/vim-auto-save
let g:auto_save = 1 
let g:auto_save_no_updatetime = 1 

"https://github.com/scrooloose/nerdtree#faq
"autocmd vimenter * NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif
"autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"http://vim.wikia.com/wiki/Format_your_xml_document_using_xmllint
"au FileType xml exe html svg ":silent %!xmllint --format --recover - 2>/dev/null"

"disable vroom default key map
let g:vroom_map_keys = 0
