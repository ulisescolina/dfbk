" Lang: LaTeX
" ____        _                  _
"/ ___| _ __ (_)_ __  _ __   ___| |_ ___
"\___ \| '_ \| | '_ \| '_ \ / _ \ __/ __|
" ___) | | | | | |_) | |_) |  __/ |_\__ \
"|____/|_| |_|_| .__/| .__/ \___|\__|___/
"              |_|   |_|

" Word count:
	map <F3> :w !detex \| wc -w<CR>
	inoremap <F3> <Esc>:w !detex \| wc -w<CR>
" Compile document using xelatex:
	inoremap <F5> <Esc>:!xelatex<space><c-r>%<Enter>a
	nnoremap <F5> :!xelatex<space><c-r>%<Enter>
" Compile document with --shell-escape
	inoremap <F4> <Esc>:!xelatex<space>--shell-escape<space><c-r>%<Enter>a
	nnoremap <F4> :!xelatex<space>--shell-escape<space><c-r>%<Enter>

	inoremap ,fr \begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}i
	inoremap ,fi \begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
	inoremap ,exe \begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
	inoremap ,em \emph{}<++><Esc>T{i
	inoremap ,bf \textbf{}<++><Esc>T{i
	vnoremap , <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<Enter>a
	inoremap ,it \textit{}<++><Esc>T{i
	inoremap ,ct \textcite{}<++><Esc>T{i
	inoremap ,cp \parencite{}<++><Esc>T{i
	inoremap ,glos {\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
	inoremap ,x \begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
	inoremap ,ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
	inoremap ,ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
	inoremap ,li <Enter>\item<Space>
	inoremap ,ref \ref{}<Space><++><Esc>T{i
	inoremap ,tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
	inoremap ,ot \begin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
	inoremap ,can \cand{}<Tab><++><Esc>T{i
	inoremap ,con \const{}<Tab><++><Esc>T{i
	inoremap ,v \vio{}<Tab><++><Esc>T{i
	inoremap ,a \href{}{<++>}<Space><++><Esc>2T{i
	inoremap ,sc \textsc{}<Space><++><Esc>T{i
	inoremap ,chap \chapter{}<Enter><Enter><++><Esc>2kf}i
	inoremap ,sec \section{}<Enter><Enter><++><Esc>2kf}i
	inoremap ,ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
	inoremap ,sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
	inoremap ,st <Esc>F{i*<Esc>f}i
	inoremap ,beg \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
	inoremap ,up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
	nnoremap ,up /usepackage<Enter>o\usepackage{}<Esc>i
	inoremap ,tt \texttt{}<Space><++><Esc>T{i
	inoremap ,bt {\blindtext}
	inoremap ,nu $\varnothing$
	inoremap ,col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
	inoremap ,rn (\ref{})<++><Esc>F}i
	inoremap ,fig \begin{figure}[H]<Enter><Space><Space>\centering<Enter><Space><Space>\includegraphics[width=.4\linewidth]{<++>}<Enter><Space><Space>\caption{<++>}<Enter><Space><Space>\label{<++>}<Enter>\end{figure}<Esc>kkkkk<Space><Tab>
