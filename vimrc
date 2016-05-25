set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Set UltiSnips Snippet Director
"let g:UltiSnipsSnippetDir= ~/.vim/bundle/vim-snippets/UltiSnips"
"let g:UltiSnipsSnippetDirectories=["UltiSnips"]

set nocp                "No Compatibility
set modelines=0         "Disables modelines
filetype on             "Turn filetype detection on
let python_highlight_all = 1
" set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""
" Comments Settings
"""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
"noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
"noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

"""""""""""""""""""""""""""""""""""""""""""""
" Display options 
"""""""""""""""""""""""""""""""""""""""""""""
set number
set ruler
highlight LineNr ctermbg=239
set cpoptions+=$
syntax on               "syntax coloring is a first-cut debugging tool
colorscheme twilight256 "change to taste. try `desert' or `evening'
"highlight Normal ctermfg=grey ctermbg=black
"set background=dark
set wrap                "wrap long lines
set scrolloff=3         "keep three lines visible above and below
set ruler showcmd       "give line, column, and command in the 
                        "status line
set laststatus=2        "always show the status line
                        "make filename-completion more terminal-like
set cc=80               "Display a color column at column 80. 
                        "Docstrings and comments should be limited to
                        "a width of 72.

hi ColorColumn ctermbg=lightgrey  " color the colorcolumn lightgrey

"""""""""""""""""""""""""""""""""""""""""""""
" search options 
"""""""""""""""""""""""""""""""""""""""""""""

"turns off search highlighting for the current search when hitting escape
"nnoremap <esc> :noh<return><esc>>

set hidden
set incsearch           "search as you type
set hlsearch            "highlight the search
set ignorecase          "ignore case

"""""""""""""""""""""""""""""""""""""""""""""
" Indentation options
"""""""""""""""""""""""""""""""""""""""""""""
"autocmd FileType python setlocal softtabstop=2 shiftwidth=2 tabstop=2
set backspace=2
set smartindent         "Do smart autoindenting when starting a new line.
set tabstop=4           "Number of spaces that a <Tab> counts for
set softtabstop=4       "Number of spaces that a <Tab> counts for while editing
set shiftwidth=4        "Number of spaces to use for each step of (auto)indent
set expandtab           "In Insert mode: Use the appropriate number of spaces to insert a
                        "<Tab>. 
set nu                  "Number each line
set window=0
" }
"vim: set ft=vim :
