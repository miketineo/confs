let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"

let g:mustache_operators = 0

set conceallevel=0

set t_Co=256
set number
set hls
set encoding=utf8 termencoding=utf8 nobomb
set autoread autowriteall
set autoindent
set autoread
set display=lastline
set formatoptions=tcqj
set history=10000
set hlsearch
set laststatus=2
set listchars=tab:>\ ,trail:-,nbsp:+
set smarttab
set tabpagemax=50
set ttyfast

" W to w
cmap W w
cmap Q q

" Nerd Commenter
filetype plugin on

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

nnoremap <c-p> :FZF<cr>
nnoremap <leader> :Find

filetype plugin indent on
autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2
autocmd Filetype go setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
set expandtab
set tabstop=2
set shiftwidth=2
autocmd QuickFixCmdPost *grep* cwindow

" Use fuzzy completion relative filepaths across directory
imap <expr> <c-x><c-f> fzf#vim#complete#path('git ls-files $(git rev-parse --show-toplevel)')

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
autocmd FileType ruby compiler ruby

" Go lang
let g:go_term_mode = "split"
let g:go_fmt_command = "goimports"
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)

" Stop Wrapping and fucking folding
set nowrap
set nofoldenable

" Vim Ruby

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" Fzf Actions
let g:fzf_buffers_jump = 1
let g:fzf_filemru_bufwrite = 1
let g:fzf_layout = { 'down': '~30%' }
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit',
      \ 'enter': 'tab split', }

" Find current word
nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>

" Ctags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>


highlight ColorColumn ctermbg=magenta

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>


" ABBS
abbr rbb require "byebug"; byebug<esc>

" Hardmode
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

" Ale
let g:ale_linters = {
      \  'javascript': ['eslint'],
      \  'ruby': ['rubocop']
\}
