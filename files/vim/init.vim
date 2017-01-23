set nocompatible                        " be iMproved, required

" Source the plugins file
so ~/.vim/plugins.vim



"---- Gvim specific
:set guioptions-=e  "no GUI tabs
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

syntax enable

set backspace=indent,eol,start
let mapleader = ','
set number

set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4


"------Visuals
colorscheme obsidian
set t_CO=256                             "Use 256 colors
set laststatus=2                         "Always display the status bar
let g:airline_powerline_fonts = 0
let g:airline_theme='luna'

"------Search
set hlsearch                             "Highlight search
set incsearch
set ignorecase

"------Splits
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y


"------Mappings

" Shortcut to edit the vimrc file
nmap <Leader>ev :tabedit ~/.vimrc<cr>

" Simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

" Comma + s to save
nmap <C-S> :w<cr>
nmap <Leader>s :w<cr>

" Remap to escape insert mode
imap jj <Esc>

" List all buffers
nmap <Leader>l :buffers<CR>
nmap <Leader>b :buffer
nmap <Leader>c :bdelete<CR>







"------Plugins

"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

nmap <c-R> :CtrlPBufTag<cr>
nmap <Leader>r :CtrlPMRUFiles<cr>



"/
"/ NERDTree
"/
" Make NERD Tree easy to toggle
let NERDTreeHijackNetrw = 0   "NERD tree is messing with vinegar...

nmap <Leader>0 :NERDTreeToggle<cr>



"------Auto-Commands
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END



"------Cheat-Sheet
" :tabc             => close a tab
" :b1 or :b2        => go to buffer 1 or 2 etc
" ctrl w and then | => expand split
" :e .              => browse the current directory
" ctrl ^ or :bp     => previous buffer

