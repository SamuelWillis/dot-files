" My Vim settings.
" Version 2: Much of this is based off recommendations. Will tweak as I go.

" This wards off unexpected things distro might have made and only reset when resourcing .vimrc
set nocompatible
set noshowmode

" pathogen
execute pathogen#infect()

" Attempt to determine type of file based on name and possibly contents.
filetype plugin indent on

" Syntax highlighting
syntax enable
set background=dark
colorscheme solarized

" I am going to try this based on a recommendation online.
" 'hidden' allows for easy switching between multiple files in same window.
" Allows for re-use of same window for switching between unsaved buffer w/o saving first.
" and maintains an undo history for multiple files when re-using window.
set hidden

" This apparently gives better wildmenu completion
set wildmenu

" Show partial commands in last line of screen
set showcmd

" Highlight searches. (C-L to temp turn off highlighting)
set hlsearch

" Case insensitive search, except when using caps
set ignorecase
set smartcase

" Backspacing over auto indent, line breaks and start of insert action.
set backspace=indent,eol,start

" Keep same indent as the line you are currently on
set autoindent

" Stop certain movements from goign to beginning of line. Makes similar to
" other editors. Deviates from Vi behaviour.
set nostartofline

" Display cursor position of the last line of screen/status line of window
set ruler

" Always display status line
set laststatus=2

" Raise dialog instead of failing command because of unsaved changes
set confirm

" Instead of noise
set visualbell
" Reset terminal code for visual bell
set t_vb=

" Enable mouse
set mouse=a

" Set command window height to 2 lines
" set cmdheight=1

" Line numbers
set number
set cursorline

" Indentation options
set shiftwidth=4
set softtabstop=4
set expandtab

" want 2 spaces for blade.php and 4 for .php
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType scss setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType php setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType blade setlocal shiftwidth=2 softtabstop=2 expandtab

" Show tabs?
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Paste mode for copy pasting.
set pastetoggle=<F2>

" Useful mappings:

" Map Y to act like D and C. yank until EOL
map Y y$

let mapleader=" "

nmap <leader>k :NERDTreeToggle<CR>

nmap <leader><Right> gt
nmap <leader><Left> gT

" Map <C-L> to also turn off seach highlighting
noremap <C-L> :nohl<CR><C-L>

" Remove Trailing Whitespace in a file
nnoremap <leader>rtw :%s/\s\+$//e<CR>:w<CR>
