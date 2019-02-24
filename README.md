# SetForTestEnvironment
testing environment is ubuntu

# install vim
```
sudo apt install vim
```
# install plugin
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
# install Shougo/neocomplcache.vim
```
cd ~/.vim/
git clone https://github.com/Shougo/neocomplcache.vim.git ./
mv ./plugin/* ./plugged 
```

# put .vimrc under ~

file .vimrc
```vim=
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'Shougo/neocomplcache'
call plug#end()

let g:neocomplcache_enable_at_startup = 1 
let g:neocomplcache_enable_smart_case = 1 
inoremap <expr><TAB> pumvisible()?"\<C-n>" : "\<TAB>"

set nu
set number
set cursorline
colorscheme default
set bg=dark
set tabstop=4
set expandtab
set shiftwidth=4
set ai
set hlsearch
set smartindent
set mouse=a
set history=200
set hls
inoremap ( ()<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap {<CR> {<CR>}<Esc>ko

filetype indent on


" Color configuration
set bg=dark
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE

" autocomplete dropdown list colorscheme
hi Pmenu ctermfg=0 ctermbg=7
hi PmenuSel ctermfg=7 ctermbg=4

```


