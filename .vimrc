set nocompatible      " We're running Vim, not Vi!
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/AutoComplPop'
Plug 'rking/ag.vim'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'scrooloose/nerdtree'
Plug 'janko-m/vim-test'
Plug 'scrooloose/nerdcommenter'
Plug '907th/vim-auto-save'
Plug 'guns/vim-sexp' 
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-fugitive'
Plug 'flowtype/vim-flow'
Plug 'w0rp/ale'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-rails'
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

map rt :w<CR>:TestFile<CR>
map rs :w<CR>:TestNearest<CR>
map rp :w<CR>:TestLast<CR>
map ra :w<CR>:TestSuite<CR>

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
nmap fr :!rg -r -l  *\| xargs sed -i -e 's///g'
nmap ff gg=G:w<cr><c-o><c-o>
nmap fx :set invnumber<cr>
nmap fz :NERDTreeToggle<cr>
"https://github.com/tpope/vim-fugitive#fugitivevim
nmap gs :Gstatus<cr>
nmap gc :Gcommit<space>-m ""
nmap gb :Gblame<cr>
nmap gd :Gdiff<cr>
nmap gp :Git<space>push --no-verify<cr>
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

nmap <silent> fe :History <CR>
nmap <silent> fo :Files <CR>
nmap <silent> fc :Commits <CR>
nmap <silent> fb :Buffers <CR>
nmap <silent> fv :BCommits <CR>
nmap <silent> fs :GFiles?<CR>

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
    let g:unite_source_rec_async_command = 'rg --nocolor --nogroup --hidden -g ""'
    let g:unite_source_grep_command = 'rg'
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

set signcolumn=yes
highlight clear SignColumn

"folding settings http://smartic.us/2009/04/06/code-folding-in-vim/
"set foldmethod=indent   "fold based on indent
"set foldnestmax=10      "deepest fold is 10 levels
"set nofoldenable        "dont fold by default
"set foldlevel=1         "this is just what i use

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDir='/Users/D/.vim/mysnippets'
let g:UltiSnipsSnippetDirectories=["mysnippets"]
let g:UltiSnipsEditSplit="vertical"

let g:flow#enable = 0

autocmd FileType javascript.jsx,javascript setlocal formatprg=prettier.sh 
"autocmd BufWritePre *.js :normal gggqG
"autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"
"
"
"https://github.com/vim-syntastic/syntastic
function! FindConfig(prefix, what, where)
    let cfg = findfile(a:what, escape(a:where, ' ') . ';')
    return cfg !=# '' ? ' ' . a:prefix . ' ' . shellescape(cfg) : ''
endfunction

autocmd FileType javascript let b:syntastic_javascript_jscs_args =
    \ get(g:, 'syntastic_javascript_jscs_args', '') .
    \ FindConfig('-c', '.eslintrc.js', expand('<afile>:p:h', 1))
