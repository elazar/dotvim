call plug#begin('~/.vim/plugins')

" ALE
Plug 'w0rp/ale'
let g:ale_linters = {'javascript': ['eslint']}

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
map <C-y> :FZF<CR>

" NERDtree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
map <C-n> :NERDTreeToggle<CR>

" vim-easymotion
Plug 'easymotion/vim-easymotion'

" vim-gitgutter
Plug 'airblade/vim-gitgutter'

" vim-sensible
Plug 'tpope/vim-sensible'

call plug#end()

" tabs and spaces
set ts=4 sts=4 sw=4 expandtab
