" My Vim settings.
" Version 4.20: Working with larger projects made me want better file
" travesal. The Laracasts Vim master has been really helpful with finding the
" plugins I use.

"-------------------------- Pathogen --------------------------
" Pathogen Needs to be ran first
execute pathogen#infect()

" Attempt to determine type of file based on name and possibly contents.
filetype on
filetype plugin on
filetype plugin indent on

" FISH complains with syntastic. So set the shell used by vim to bash
set shell=/bin/bash





"-------------------------- Visuals --------------------------
" Syntax highlighting
syntax enable

" Colour scheme
set background=dark
colorscheme monokai
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

" italics
let g:monokai_term_iltalic = 1





"-------------------------- Mappings --------------------------
let mapleader=" "

" Edit .vimrc in new file
nmap <leader>ev :tabedit $MYVIMRC<cr>
" Edit snippet files
nmap <leader>es :tabedit ~/.vim/snippets/

" Map Y to act like D and C. yank until EOL
map Y y$


" Map <leader>, to also turn off seach highlighting
noremap <leader>, :nohl<CR><C-L>

" Remove Trailing Whitespace in a file
nnoremap <leader>rtw :%s/\s\+$//e<CR>:w<CR>

" Open CtrlP in BufTag mode.
" Allows for searching buffer for tags.
nmap <leader>cpt :CtrlPBufTag<CR>

" Open CtrlP Most Recently used.
nmap <leader>cpr :CtrlPMRUFiles<cr>

" Search the ctags file for a tag
nmap <leader>tf :tag<space>

" Insert a line below without going into insert.
nmap <leader>o o<ESC>k

" Insert a line above without going into insert.
nmap <leader>O O<ESC>j





"-------------------------- Split Management --------------------------
" Splits default to below and to right.
set splitbelow
set splitright

" Remap split traversal
nmap <C-K> <C-W><C-K>
nmap <C-J> <C-W><C-J>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

" Makes current pane take up whole screen
nmap <leader>fs <C-W><bar>

" Makes panes equal widths.
nmap <leader>sp <C-W>=





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





"-------------------------- Plugins --------------------------

"/
"/ Syntastic
"/
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"/
"/ CtrlP
"/
" Ignore node_modules, DS_Store, and git
if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$\|log\|tmp$\|node_modules\DS_Store\|node_modules',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
" Move the CtrlP window.
" Place at the top, order top to bottom, at least 1, maximum 30, always
" display 30 columns
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:30,results:15'



"/
"/ NERDTree
"/
" Open NERDTree
nmap <leader>k :NERDTreeToggle<CR>
let NERDTreeHijackNetrw = 0

"/
"/ IndentLines
"/
let g:indentLine_enabled = 0
nmap <leader>ig :IndentLinesToggle<CR>

"/
"/ Vim-Javascript
"/
let g:javascript_plugin_jsdoc = 1

"/
"/ Vim-Javascript
"/
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

"/
"/ Vim-Airline
"/
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme = 'jellybeans'

"/
"/ vim-php-cs-fixer
"/
let g:php_cs_fixer_level = "psr2"

"/
"/ Vim-mustache
"/
let g:mustache_abbreviations = 1

"/
"/ Fugitive
"/
" Mappings to mimic my alias file.
nmap <leader>g :G
nmap <leader>gst :Gstatus<cr>






"-------------------------- Options --------------------------
set nocompatible
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
set shiftwidth=2
set softtabstop=2
set expandtab


" Show tabs?
set list
set listchars=tab:\|\ ,trail:.,extends:#,nbsp:.

