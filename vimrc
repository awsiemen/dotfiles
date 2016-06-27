syntax on
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

source ~/.vim/plugins.vim

filetype plugin on
set laststatus=2

" For Diary
nnoremap di :r ~/diary/template<CR>:s/REPLACE/\=strftime("%B %d")<CR>

" Open nerdtree
nmap NT :NERDTreeToggle<cr>



" Numbering
set number
set relativenumber

" Folding
set foldmethod=indent
set sw=2

" Clear gpg passwords
nnoremap dc :! kill -SIGHUP `pidof gpg-agent`<CR><CR>

" Saner panel movement
nmap <C-J> <C-W>j
nmap <C-H> <C-W>h
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

let g:GPGPreferArmor=1
