" My Vim settings.
" Version 2: Much of this is based off recommendations. Will tweak as I go.
"-------------------------- Plugins --------------------------
" Pathogen Needs to be ran first
execute pathogen#infect()

" Attempt to determine type of file based on name and possibly contents.
filetype plugin indent on





"-------------------------- Visuals --------------------------
" Syntax highlighting
syntax enable

" Colour scheme
set background=dark
colorscheme solarized
set t_CO=256

" Display cursor position at bottom right.
set ruler

" Highlight searches. (<leader>, to temp turn off highlighting)
set hlsearch
set incsearch

" Line numbers
set number

" Highlight line cursor is on.
set cursorline





"-------------------------- Mappings --------------------------
let mapleader=" "

" Edit .vimrc in new file
nmap <leader>ev :tabedit $MYVIMRC<cr>

" Map Y to act like D and C. yank until EOL
map Y y$

" Open NERDTree
nmap <leader>k :NERDTreeToggle<CR>

" Map <leader>, to also turn off seach highlighting
noremap <leader>, :nohl<CR><C-L>

" Remove Trailing Whitespace in a file
nnoremap <leader>rtw :%s/\s\+$//e<CR>:w<CR>





"-------------------------- Split Management --------------------------
" Splits default to below and to right.
set splitbelow
set splitright

" Remap split traversal
nmap <C-K> <C-W><C-K>
nmap <C-J> <C-W><C-J>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

" More split pane mappings to come.
" Want to remap:
"   :b<number>?
"   <C-W>| (pipe) => makes current pane take up whole screen
"   <C-W>=  => makes panes equal widths.




"-------------------------- Auto Commands --------------------------
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

" want 2 spaces for blade.php and 4 for .php
augroup indentation
    autocmd!
    autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 expandtab
    autocmd FileType scss setlocal shiftwidth=2 softtabstop=2 expandtab
    autocmd FileType php setlocal shiftwidth=4 softtabstop=4 expandtab
    autocmd FileType blade setlocal shiftwidth=2 softtabstop=2 expandtab
augroup END





"-------------------------- Syntastic --------------------------
" Basic Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0





"-------------------------- Options --------------------------
" This wards off unexpected things distro might have made and only reset when resourcing .vimrc
set nocompatible
set noshowmode

" 'hidden' allows for easy switching between multiple files in same window.
" Allows for re-use of same window for switching between unsaved buffer w/o saving first.
" and maintains an undo history for multiple files when re-using window.
set hidden

" This apparently gives better wildmenu completion
set wildmenu

" Show partial commands in last line of screen
set showcmd

" Case insensitive search, except when using caps
set ignorecase
set smartcase

" Backspacing over auto indent, line breaks and start of insert action.
set backspace=indent,eol,start

" Keep same indent as the line you are currently on
set autoindent

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


" Indentation options
set shiftwidth=4
set softtabstop=4
set expandtab


" Show tabs?
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Paste mode for copy pasting.
set pastetoggle=<F2>
