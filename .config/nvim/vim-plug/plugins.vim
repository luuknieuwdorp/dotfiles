let g:lightline = {'colorscheme': 'gruvbox'} 

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    
    " File Explorer
    Plug 'scrooloose/NERDTree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
   
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Themes
    Plug 'morhetz/gruvbox'
    Plug 'itchyny/lightline.vim'
    Plug 'shinchu/lightline-gruvbox.vim'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'arcticicestudio/nord-vim'
call plug#end()

