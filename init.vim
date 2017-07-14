call plug#begin('~/.vim/plugins')

" vim-unimpaired
Plug 'tpope/vim-unimpaired'

" phpcd.vim
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }

" vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='base16_flat'
let g:airline#extensions#tabline#enabled = 1
set noruler noshowmode

" Base16
Plug 'chriskempson/base16-vim'

" ALE
Plug 'w0rp/ale'
let g:ale_linters = {'javascript': ['eslint']}

" editorconfig
Plug 'editorconfig/editorconfig-vim'

" fzy
Plug 'cloudhead/neovim-fuzzy'
nnoremap <C-y> :FuzzyOpen<CR>

" vim-filebeagle
Plug 'jeetsukumaran/vim-filebeagle'

" vim-easymotion
Plug 'easymotion/vim-easymotion'

" vim-gitgutter
Plug 'airblade/vim-gitgutter'

" vim-commentary
Plug 'tpope/vim-commentary'

" vim-markdown
Plug 'tpope/vim-markdown', { 'for': 'markdown' }

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

" vim-mustache-handlebars
Plug 'mustache/vim-mustache-handlebars'

" vim-pandoc-syntax
Plug 'vim-pandoc/vim-pandoc-syntax', { 'for': 'markdown.pandoc' }
augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.markdown set filetype=markdown.pandoc
augroup END
let g:pandoc#syntax#conceal#use = 0

" vim-sensible
Plug 'tpope/vim-sensible'

call plug#end()

" tabs and spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" line numbers
set relativenumber
