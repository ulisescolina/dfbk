" Lang: Rmarkdown
" Tabulaciones
set autoindent
set cindent
setlocal shiftwidth=2
setlocal tabstop=2
" ____        _                  _
"/ ___| _ __ (_)_ __  _ __   ___| |_ ___
"\___ \| '_ \| | '_ \| '_ \ / _ \ __/ __|
" ___) | | | | | |_) | |_) |  __/ |_\__ \
"|____/|_| |_|_| .__/| .__/ \___|\__|___/
"              |_|   |_|
"
map <leader>w yiWi[<esc>Ea](<esc>pa)
inoremap ,n ---<Enter><Enter>
inoremap ,b ****<++><Esc>F*hi
inoremap ,s ~~~~<++><Esc>F~hi
inoremap ,e **<++><Esc>F*i
inoremap ,h ====<Space><++><Esc>F=hi
inoremap ,i ![](<++>)<++><Esc>F[a
inoremap ,a [](<++>)<++><Esc>F[a
inoremap ,1 #<Space><Enter><++><Esc>kA
inoremap ,2 ##<Space><Enter><++><Esc>kA
inoremap ,3 ###<Space><Enter><++><Esc>kA
inoremap ,l --------<Enter>
inoremap ,r ```{r}<CR>```<CR><CR><esc>2kO
inoremap ,p ```{python}<CR>```<CR><CR><esc>2kO
inoremap ,c ```<cr>```<cr><cr><esc>2kO
