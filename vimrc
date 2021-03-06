" Vim Configuration File
" Maintainer: Jonathan T Smith <Jtsmith [DOT] tms [AT] gmail [DOT] com
" Last Changed: May25, 2016
" =============================================================================

" =============================================================================
" Below borrowed from:
" Bidit Mazumder <Bidit [DOT] Mazumder [AT] ttualumni [DOT] org>
" http://biditm.users.sourceforge.net/vim/_vimrc
" =============================================================================
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
" =============================================================================

" =============================================================================
" Vundle & Plugin Config
" =============================================================================

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
Plugin 'godlygeek/csapprox'
Plugin 'ajh17/VimCompletesMe'
Plugin 'davidhalter/jedi-vim'


" =================================
Plugin 'scrooloose/nerdcommenter'
" =================================


" Mappings ========================

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Align line-wise comment delimiters flush left instead of following code
"indentation
let g:NERDDefaultAlign = 'left'

"Add spaces after comment delimiters by default
"let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
"let g:NERDCompactSexyComs = 1


" Set a language to use its alternate delimiters by default
"let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
"let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a
"region)
"let g:NERDCommentEmptyLines = 1

" =============END=================

" =================================
" Vim Side Search
" =================================

Plugin 'ddrscott/vim-side-search'

" How should we execute the search?
" --heading and --stats are required!

let g:side_search_prg = 'ag --word-regexp'
  \. " --ignore='*.js.map'"
  \. " --heading --stats -B 1 -A 4"

" Can use `vnew` or `new`
let g:side_search_splitter = 'vnew'

" I like 40% splits, change it if you don't
let g:side_search_split_pct = 0.4

" Mappings ========================

"n/N         - Cursor to next/prev result
"<C-n>/<C-p> - Open next/prev in largest window
"<CR>        - Open location at cursor in largest window
"<C-w><CR>   - Open and jump to window
"qf          - :grep! to Quickfix

" =============END=================

" =================================
" UltiSnips & Vim-Snippets
" =================================

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Set :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" =============END=================

" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update
"                   or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins;
"                   append `!` to auto-approve removal

" See :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" =============================================================================
" Settings
" =============================================================================

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

" =============================================================================
" Display Options
" =============================================================================

":set t_Co=256

colorscheme grimmcasts   "change to taste. try `desert' or `evening'

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

" =============================================================================
" Search Options
" =============================================================================

set hidden
set incsearch           "search as you type
set hlsearch            "highlight the search
set ignorecase          "ignore case

"turns off search highlighting for the current search when hitting escape
" (Starts vim in INSERT mode for some reason)
"nnoremap <esc> :noh<return><esc>>

" =============================================================================
" Indentation Options
" =============================================================================

set backspace=2
"set smartindent         "Do smart autoindenting when starting a new line.
set tabstop=4           "Number of spaces that a <Tab> counts for
set softtabstop=4       "Number of spaces that a <Tab> counts for while editing
set shiftwidth=4        "Number of spaces to use for each step of (auto)indent
set expandtab           "In Insert mode: Use the appropriate number of spaces
                        "to insert a <Tab>.
set window=0
" }
"vim: set ft=vim :

" =============================================================================
" Map (Macro) and Custom Commands
" =============================================================================
let mapleader=","
nnoremap / /\v
" Type :C to clear search highlighting from previous searh.
:command C let @/=""

" Press <spacebar> then type a character to insert it at cursor.
noremap <silent> <space> :exe "normal i".nr2char(getchar())<CR>

" Open current buffer in a new tab
:noremap tt :tab split<CR>
"noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape
"(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
"noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape
"(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" =============================================================================
" Rule Testing
" =============================================================================


" highlight the column the cursor is on
"set      cursorcolumn

