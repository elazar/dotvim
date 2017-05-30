call plug#begin('~/.vim/plugins')

" ALE
Plug 'w0rp/ale'
let g:ale_linters = {'javascript': ['eslint']}

" editorconfig
Plug 'editorconfig/editorconfig-vim'

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

" vim-markdown
Plug 'tpope/vim-markdown', { 'for': 'markdown' }

" vim-mustache-handlebars
Plug 'mustache/vim-mustache-handlebars'

" Highlight fenced code in Markdown
" Map prism.js languages to vim filetypes
let g:markdown_fenced_languages = [
    \ 'bash=sh',
    \ 'ini=dosini',
    \ 'javascript',
    \ 'makefile=make',
    \ 'markup=html',
    \ 'php',
    \ 'ruby',
    \ ]

" vim-sensible
Plug 'tpope/vim-sensible'

call plug#end()

" tabs and spaces
set ts=4 sts=4 sw=4 expandtab
