" Vim Configuration File
" Maintainer: Jonathan T Smith <Jtsmith [DOT] tms [AT] gmail [DOT] com
" Last Changed: May25, 2016
" =========================================================================== "

" =========================================================================== "
" Below borrowed from:
" Bidit Mazumder <Bidit [DOT] Mazumder [AT] ttualumni [DOT] org>
" http://biditm.users.sourceforge.net/vim/_vimrc
" =========================================================================== "
" To start Vim without loading your ".vimrc" or ".gvimrc" file, use
" "vim -u NONE -U NONE"
" This will revert Vim to Vi compatible mode, which disables many useful
" features.
" It will also disable all installed plugins. To  disable Vi compatibility,
" add the "-N" flag.
" To enable the installed plugins, add the "--cmd ':filetype plugin on'"
" flag.
" So to start Vim without loading your ".vimrc" or ".gvimrc" file and in
" nocompatible mode with plugins enabled, use:
" vim -u NONE -U NONE -N --cmd ':filetype plugin on'".

" END BORROWED
" =========================================================================== "

" =========================================================================== "
" Vundle Plugin Config
" =========================================================================== "

set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" Let Vundle manage Vundle, required:

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'godlygeek/csapprox'

" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Set :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update
"                   or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins;
"                   append `!` to auto-approve removal

" See :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" =========================================================================== "
" Settings
" =========================================================================== "

set nocp                "No Compatibility
set modelines=0         "Disables modelines
filetype on             "Turn filetype detection on
let python_highlight_all = 1
" set mouse=a
" Do not use errorbells
set      noerrorbells

" Compatible-Options
set cpoptions+=$

autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '

" =========================================================================== "
" Display Options
" =========================================================================== "

":set t_Co=256

colorscheme railscasts   "change to taste. try `desert' or `evening'

" Enable Syntax Highlighting
if !exists("g:syntax_on")
        syntax enable
endif

" Turn row numbers on
set number

" Color the Line Numbers
"highlight LineNr ctermbg=0

" Color the colorcolumn lightgrey
hi ColorColumn ctermbg=lightgrey

"Highlight the line the cursor is on.
set      cursorline

" use a different background color after column 79
execute  "set colorcolumn=" . join(range(80,400), ',')


" Turn on the ruler (Row / Column numbers in the status bar)
set ruler


set wrap                "wrap long lines
set scrolloff=3         "keep three lines visible above and below
set ruler showcmd       "give line, column, and command in the
                        "status line
set laststatus=2        "always show the status line
                        "make filename-completion more terminal-like
set cc=80               "Display a color column at column 80.
                        "Docstrings and comments should be limited to
                        "a width of 72.

" =========================================================================== "
" Search Options
" =========================================================================== "

set hidden
set incsearch           "search as you type
set hlsearch            "highlight the search
set ignorecase          "ignore case

"turns off search highlighting for the current search when hitting escape
" (Starts vim in INSERT mode for some reason)
"nnoremap <esc> :noh<return><esc>>

" =========================================================================== "
" Indentation Options
" =========================================================================== "

set backspace=2
set smartindent         "Do smart autoindenting when starting a new line.
set tabstop=4           "Number of spaces that a <Tab> counts for
set softtabstop=4       "Number of spaces that a <Tab> counts for while editing
set shiftwidth=4        "Number of spaces to use for each step of (auto)indent
set expandtab           "In Insert mode: Use the appropriate number of spaces to insert a
                        "<Tab>.
set window=0
" }
"vim: set ft=vim :

" =========================================================================== "
" Map (Macro) Commands
" =========================================================================== "

"noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape
"(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
"noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape
"(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" =========================================================================== "
" Rule Testing
" =========================================================================== "


" highlight the column the cursor is on
"set      cursorcolumn

