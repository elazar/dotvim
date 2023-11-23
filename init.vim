" Load plugins using vim-plug
call plug#begin('~/.config/nvim/plugins')

"""""""""""""""""""""""""""""""""""""""""""""""""
" User interface
"""""""""""""""""""""""""""""""""""""""""""""""""

" Dark color scheme supported by vim-airline
Plug 'tomasiser/vim-code-dark'

" Status/tabline
Plug 'vim-airline/vim-airline'

" Make vim-airline use dark color scheme
let g:airline_theme = 'codedark'

" Display all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1

" Remove the default mode indicator in favor of the one in vim-airline
set noshowmode

" Remove the default ruler (cursor position) in favor of the one in vim-airline
set noruler 

" Show git diff line statuses in the gutter
Plug 'airblade/vim-gitgutter'

" Enhanced directory drawer
Plug 'tpope/vim-vinegar'
" - activate drawer
" . on a file to pre-populate it at the end of a : command
" ! on a file to pre-populate it at the end of a ! command
" y. yank absolute file path
" ~ navigate to home directory

"""""""""""""""""""""""
" Behavior and features
"""""""""""""""""""""""

" Sensible default configuration
Plug 'tpope/vim-sensible'

" Shortcuts to comment or uncomment code
Plug 'tpope/vim-commentary'
" gc comment out a visual selection
" gcc comment out a line, takes a count
" gcap comment out a target (e.g. gcap comments out a paragraph)

" Fuzzy file finding using fzf
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
nnoremap <C-p> :Files<CR>
set rtp+=/usr/local/opt/fzf

" Provides a much simpler way to use some motions
Plug 'easymotion/vim-easymotion'
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
" \\w navigate to a word
" \\f navigate to a character
" \j navigate to a line below the cursor
" \k navigate to a line above the cursor

" Git / GitHub / GitLab integration
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'shumphrey/fugitive-gitlab.vim'
vnoremap <leader>gb :GBrowse!:%<CR>
" \gb get GitHub / GitLab URL to visually highlighted segment

"""""""""""""""""""""""""""""""
" Language features and support
"""""""""""""""""""""""""""""""

" Highlights coding style issues for projects using EditorConfig
Plug 'editorconfig/editorconfig-vim'

" Asynchronous code linting
Plug 'dense-analysis/ale'
let g:ale_linters = {'javascript': ['eslint'], 'php': ['phpstan']}
let g:ale_php_phpstan_configuration = 'phpstan-baseline.neon'

" Markdown support, including fenced code block syntax highlighting
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
let g:markdown_syntax_conceal = 0

" Extends Markdown support to highlight using Github Flavored Markdown
Plug 'jtratner/vim-flavored-markdown'

" Map prism.js languages to vim filetypes
let g:markdown_fenced_languages = [
    \ 'bash=sh',
    \ 'ini=dosini',
    \ 'javascript',
    \ 'makefile=make',
    \ 'markup=html',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'sql',
    \ ]

" Pandoc Markdown support, used by book editor
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
au BufNewFile,BufFilePre,BufRead *.markdown set filetype=markdown.pandoc
let g:pandoc#filetypes#pandoc_markdown = 0
let g:pandoc#syntax#codeblocks#embeds#langs = ['bash', 'html', 'php', 'yaml']
let g:pandoc#modules#disabled = ['folding']
let g:pandoc#syntax#conceal#use = 0

call plug#end()

"""""""""""""""""""""
" Non-plugin settings
"""""""""""""""""""""

" Use dark color scheme
colorscheme codedark

" Convert tabs to spaces
set expandtab

" Use 4 spaces per tab by default
set tabstop=4 softtabstop=4 shiftwidth=4

" For YAML files, use 2 spaces instead
au BufNewFile,BufFilePre,BufRead *.yaml set tabstop=2 softtabstop=2 shiftwidth=2

" Use relative line numbering
set relativenumber
