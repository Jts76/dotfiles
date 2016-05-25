call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()
set nocp                "No Compatibility
set modelines=0
filetype on
"let python_highlight_all = 1
" set mouse=a
g:UltiSnipsExpandTrigger               <tab> 
g:UltiSnipsListSnippets                <c-tab>
g:UltiSnipsJumpForwardTrigger          <c-j> 
g:UltiSnipsJumpBackwardTrigger         <c-k> 
"""""""""""""""""""""""""""""""""""""""""""""
" Display options 
"""""""""""""""""""""""""""""""""""""""""""""
"  set background=dark
set number
set ruler
hi LineNr ctermbg=239 
set cpoptions+=$
syntax on               "syntax coloring is a first-cut debugging tool
colorscheme twilight256 "change to taste. try `desert' or `evening'

set wrap                "wrap long lines
set scrolloff=3         "keep three lines visible above and below
set ruler showcmd       "give line, column, and command in the status line
set laststatus=2        "always show the status line
"make filename-completion more terminal-like

"""""""""""""""""""""""""""""""""""""""""""""
" search options 
"""""""""""""""""""""""""""""""""""""""""""""
set hidden
set incsearch           "search as you type
set hlsearch            "highlight the search
set ignorecase          "ignore case

"""""""""""""""""""""""""""""""""""""""""""""
" Indentation options
"""""""""""""""""""""""""""""""""""""""""""""
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
" vim: set ft=vim :

