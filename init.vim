call plug#begin('~/.vim/plugins')

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
map <C-y> :FZF<CR>

" NERDtree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
map <C-n> :NERDTreeToggle<CR>

" vim-sensible
Plug 'tpope/vim-sensible'

call plug#end()
