source $HOME/.config/nvim/vim-plug/plugins.vim

set number
syntax on
autocmd vimenter * colorscheme gruvbox 
set background=dark
set title
set expandtab
set tabstop=2
set shiftwidth=2

" Auto open NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Ctrl + n for NERDTree toggle
map <C-n> :NERDTreeToggle<CR>

" Ctrl + backspace to delete word
imap <C-BS> <C-W>

" Unbind arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
