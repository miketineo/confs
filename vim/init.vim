source $HOME/.config/nvim/config/plugins.vimrc
source $HOME/.config/nvim/config/misc.vimrc
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number  --color "always" '.shellescape(<q-args>), 1, <bang>0)
" command! -bang -nargs=* Find call fzf#vim#grep('rg --color "always" '.shellescape(<q-args>), 1, <bang>0)
