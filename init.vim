call plug#begin('~/.vim/plugins')

"""""""""""""""""""""""""""""""""""""""""""""""""
" Color theme, status/tabline, and other UI stuff
"""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'tomasiser/vim-code-dark'

Plug 'vim-airline/vim-airline'
let g:airline_theme = 'codedark'
let g:airline#extensions#tabline#enabled = 1
set noruler noshowmode

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-vinegar'

"""""""""""""""""""""""
" Behavior and features
"""""""""""""""""""""""

Plug 'tpope/vim-sensible'

Plug 'tpope/vim-commentary'

Plug 'cloudhead/neovim-fuzzy'
nnoremap <C-p> :FuzzyOpen<CR>

Plug 'easymotion/vim-easymotion'

Plug 'Townk/vim-autoclose'

"""""""""""""""""""""""""""""""
" Language features and support
"""""""""""""""""""""""""""""""

Plug 'editorconfig/editorconfig-vim'

Plug 'w0rp/ale'
let g:ale_linters = {'javascript': ['eslint']}

Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }

Plug 'tpope/vim-markdown', { 'for': 'markdown' }

" Map prism.js languages to vim filetypes
let g:markdown_fenced_languages = [
    \ 'bash=sh',
    \ 'ini=dosini',
    \ 'javascript',
    \ 'makefile=make',
    \ 'markup=html',
    \ 'php',
    \ 'ruby',
    \ 'sql',
    \ ]

Plug 'mustache/vim-mustache-handlebars'

Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
au BufNewFile,BufFilePre,BufRead *.markdown set filetype=markdown.pandoc
let g:pandoc#filetypes#pandoc_markdown = 0
let g:pandoc#syntax#codeblocks#embeds#langs = ['php']
let g:pandoc#modules#disabled = ['folding']
let g:pandoc#syntax#conceal#use = 0

call plug#end()

"""""""""""""""""""""
" Non-plugin settings
"""""""""""""""""""""

colorscheme codedark

set expandtab

set tabstop=4
set softtabstop=4
set shiftwidth=4

au BufNewFile,BufFilePre,BufRead *.yaml set tabstop=2 softtabstop=2 shiftwidth=2

set relativenumber
