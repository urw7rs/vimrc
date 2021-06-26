if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'valloric/youcompleteme'

Plug 'morhetz/gruvbox'

call plug#end()

colorscheme gruvbox
set background=dark

" show linter in errors from ale
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

nnoremap ; :FZF<cr>

"g:ycm_auto_hover = 'CursorHold'
nmap <leader>D <plug>(YCMHover)

" for lightline
set laststatus=2

set number
set backspace=indent,eol,start

" ---- Minimal configuration:
set smartindent   " Do smart autoindenting when starting a new line
set shiftwidth=4  " Set number of spaces per auto indentation
set expandtab     " When using <Tab>, put spaces instead of a <tab> character

" ---- Good to have for consistency
set tabstop=4   " Number of spaces that a <Tab> in the file counts for
set smarttab    " At <Tab> at beginning line inserts spaces set in shiftwidth

" ---- Bonus for proving the setting
" Displays '-' for trailing space, '>-' for tabs and '_' for non breakable space
set listchars=tab:>-,trail:-,nbsp:_
set list
