" Name:		dks-il2+tex.vim
"
" Version:	2.0
" 
" Author:	Milan Berta <bertm0am@artax.karlin.mff.cuni.cz>
"
" Last Change:	24.03.2004
"
" Description: Central European chars in latin2 (cp1250, pl2) and TeX
" encoding.
" 
" The most of Central European accented characters are defined, also in TeX
" encoding. Changing encoding between these codes. I used to work with:
" - 'digraphs', but not all CTRL-K {char1} {char2} work the way that I want;
"   it does not work in command-line mode and in search also.
" - 'keymap' (see 'loadkeymap') but it does not works to me anyway, and in
"   $vim/keymap/accents.vim there are no all CZ, HU and SK chars from
"   mentioned encodings (I think there are just East European characters).
"   
" This 'keymap' shows more MSWord "compatibility" for Central Europe (I
" think), for those who works half-time with Word it is very useful :-)
"
" Usage: Use [=+:;.,^] + <char> to write an accented character: <char> with
" acute, ve, etc.
"
" - <leader>at - convert the file from accents to TeX and map TeX deadkeys
" - <leader>ta - convert the file from TeX to accents and map accent dedakeys
" - <leader>da - map accent dedakeys
" - <leader>dt - map TeX deadkeys
" - <leader>du - unmap deadkeys
"  
" Section: Initialization {{{1
" To not give a message when first loaded.
let s:give_a_message = 0
let s:langcode1 = "latin2"
let s:langcode2 = "TeX"
"}}}1
" Section: Mapping and unmapping deadkeys {{{1
" Function: s:DKSaccents() {{{2
" Mapping accents from accented encoding.
function! s:DKSaccents()
  noremap! +a �
  noremap! +A �
  noremap! +c �
  noremap! +C �
  noremap! +d �
  noremap! +D �
  noremap! +e �
  noremap! +E �
  noremap! +l �
  noremap! +L �
  noremap! +n �
  noremap! +N �
  noremap! +o �
  noremap! +O �
  noremap! +r �
  noremap! +R �
  noremap! +s �
  noremap! +S �
  noremap! +t �
  noremap! +T �
  noremap! +u �
  noremap! +U �
  noremap! +z �
  noremap! +Z �

  noremap! :a �
  noremap! :A �
  noremap! :e �
  noremap! :E �
  noremap! :o �
  noremap! :O �
  noremap! :u �
  noremap! :U �

  noremap! .a �
  noremap! .A �
  noremap! .d �
  noremap! .D �
  noremap! .e �
  noremap! .E �
  noremap! .l �
  noremap! .L �
  noremap! .z �
  noremap! .Z �

  noremap! =a �
  noremap! =A �
  noremap! =c �
  noremap! =C �
  noremap! =e �
  noremap! =E �
  noremap! =i �
  noremap! =I �
  noremap! =l �
  noremap! =L �
  noremap! =n �
  noremap! =N �
  noremap! =o �
  noremap! =O �
  noremap! =r �
  noremap! =R �
  noremap! =s �
  noremap! =S �
  noremap! =u �
  noremap! =U �
  noremap! =y �
  noremap! =Y �
  noremap! =z �
  noremap! =Z �

  noremap! ^a �
  noremap! ^A �
  noremap! ^i �
  noremap! ^I �
  noremap! ^s �
  noremap! ^S �

  noremap! ;o �
  noremap! ;O �
  noremap! ;u �
  noremap! ;U �

  noremap! ,c �
  noremap! ,C �
  noremap! ,s �
  noremap! ,S �
  noremap! ,t �
  noremap! ,T �

if s:give_a_message != 0
  echo "Deadkeys in ".s:langcode1." encoding are mapped."
endif
let s:give_a_message = 1
endfunction

" Function: s:DKStex() {{{2
" Mapping accents from TeX encoding.
function! s:DKStex()
  noremap! +a \u{a}
  noremap! +A \u{A}
  noremap! +c \v{c}
  noremap! +C \v{C}
  noremap! +d \v{d}
  noremap! +D \v{D}
  noremap! +e \v{e}
  noremap! +E \v{E}
  noremap! +l \v{l}
  noremap! +L \v{L}
  noremap! +n \v{n}
  noremap! +N \v{N}
  noremap! +o \^o
  noremap! +O \^O
  noremap! +r \v{r}
  noremap! +R \v{R}
  noremap! +s \v{s}
  noremap! +S \v{S}
  noremap! +t \v{t}
  noremap! +T \v{T}
  noremap! +u \accent23u
  noremap! +U \accent23U
  noremap! +z \v{z}
  noremap! +Z \v{Z}

  noremap! :a \"a
  noremap! :A \"A
  noremap! :e \"e
  noremap! :E \"E
  noremap! :o \"o
  noremap! :O \"O
  noremap! :u \"u
  noremap! :U \"U

  noremap! .a \k{a}
  noremap! .A \k{A}
  noremap! .d \eth{}
  noremap! .D \Eth{}
  noremap! .e \k{e}
  noremap! .E \k{E}
  noremap! .l \l{}
  noremap! .L \L{}
  noremap! .z \.z
  noremap! .Z \.Z

  noremap! =a \'a
  noremap! =A \'A
  noremap! =c \'c
  noremap! =C \'C
  noremap! =e \'e
  noremap! =E \'E
  noremap! =i \'\i{}
  noremap! =I \'I
  noremap! =l \'l
  noremap! =L \'L
  noremap! =n \'n
  noremap! =N \'N
  noremap! =o \'o
  noremap! =O \'O
  noremap! =r \'r
  noremap! =R \'R
  noremap! =s \'s
  noremap! =S \'S
  noremap! =u \'u
  noremap! =U \'U
  noremap! =y \'y
  noremap! =Y \'Y
  noremap! =z \'z
  noremap! =Z \'Z

  noremap! ^a \^a
  noremap! ^A \^A
  noremap! ^i \^\i{}
  noremap! ^I \^I
  noremap! ^s \ss{}
  noremap! ^S \ss{}

  noremap! ;o \H{o}
  noremap! ;O \H{O}
  noremap! ;u \H{u}
  noremap! ;U \H{U}

  noremap! ,c \c{c}
  noremap! ,C \c{C}
  noremap! ,s \c{s}
  noremap! ,S \c{S}
  noremap! ,t \c{t}
  noremap! ,T \c{T}

if s:give_a_message != 0
  echo "Deadkeys in ".s:langcode2." encoding are mapped."
endif
let s:give_a_message = 1
endfunction

" Function: s:DKSunmap() {{{2
" Unmapping accents from current encoding.
function! s:DKSunmap()
  unmap! +a
  unmap! +A
  unmap! +c
  unmap! +C
  unmap! +d
  unmap! +D
  unmap! +e
  unmap! +E
  unmap! +l
  unmap! +L
  unmap! +n
  unmap! +N
  unmap! +o
  unmap! +O
  unmap! +r
  unmap! +R
  unmap! +s
  unmap! +S
  unmap! +t
  unmap! +T
  unmap! +u
  unmap! +U
  unmap! +z
  unmap! +Z

  unmap! :a
  unmap! :A
  unmap! :e
  unmap! :E
  unmap! :o
  unmap! :O
  unmap! :u
  unmap! :U
 
  unmap! .a
  unmap! .A
  unmap! .d
  unmap! .D
  unmap! .e
  unmap! .E
  unmap! .l
  unmap! .L
  unmap! .z
  unmap! .Z

  unmap! =a
  unmap! =A
  unmap! =c
  unmap! =C
  unmap! =e
  unmap! =E
  unmap! =i
  unmap! =I
  unmap! =l
  unmap! =L
  unmap! =n
  unmap! =N
  unmap! =o
  unmap! =O
  unmap! =r
  unmap! =R
  unmap! =s
  unmap! =S
  unmap! =u
  unmap! =U
  unmap! =y
  unmap! =Y
  unmap! =z
  unmap! =Z

  unmap! ^a
  unmap! ^A
  unmap! ^i
  unmap! ^I
  unmap! ^s
  unmap! ^S

  unmap! ;o
  unmap! ;O
  unmap! ;u
  unmap! ;U

  unmap! ,c
  unmap! ,C
  unmap! ,s
  unmap! ,S
  unmap! ,t
  unmap! ,T

echo "Deadkeys are unmapped."
endfunction

" Function: s:TexToAccents() {{{2
" Change the encoding of the current file from TeX to 'one-letter-accents'.
function! s:TeXToAccents()
%s/\\u{a}/�/ge
%s/\\u{A}/�/ge
%s/\\v{c}/�/ge
%s/\\v{C}/�/ge
%s/\\v{d}/�/ge
%s/\\v{D}/�/ge
%s/\\v{e}/�/ge
%s/\\v{E}/�/ge
%s/\\v{l}/�/ge
%s/\\v{L}/�/ge
%s/\\v{n}/�/ge
%s/\\v{N}/�/ge
%s/\\^o/�/ge
%s/\\^O/�/ge
%s/\\v{r}/�/ge
%s/\\v{R}/�/ge
%s/\\v{s}/�/ge
%s/\\v{S}/�/ge
%s/\\v{t}/�/ge
%s/\\v{T}/�/ge
%s/\\accent23u/�/ge
%s/\\accent23U/�/ge
%s/\\v{z}/�/ge
%s/\\v{Z}/�/ge
%s/\\"a/�/ge
%s/\\"A/�/ge
%s/\\"e/�/ge
%s/\\"E/�/ge
%s/\\"o/�/ge
%s/\\"O/�/ge
%s/\\"u/�/ge
%s/\\"U/�/ge
%s/\\k{a}/�/ge
%s/\\k{A}/�/ge
%s/\\eth{}/�/ge
%s/\\Eth{}/�/ge
%s/\\k{e}/�/ge
%s/\\k{E}/�/ge
%s/\\l{}/�/ge
%s/\\L{}/�/ge
%s/\\.z/�/ge
%s/\\.Z/�/ge
%s/\\'a/�/ge
%s/\\'A/�/ge
%s/\\'c/�/ge
%s/\\'C/�/ge
%s/\\'e/�/ge
%s/\\'E/�/ge
%s/\\'\\i{}/�/ge
%s/\\'I/�/ge
%s/\\'l/�/ge
%s/\\'L/�/ge
%s/\\'n/�/ge
%s/\\'N/�/ge
%s/\\'o/�/ge
%s/\\'O/�/ge
%s/\\'r/�/ge
%s/\\'R/�/ge
%s/\\'s/�/ge
%s/\\'S/�/ge
%s/\\'u/�/ge
%s/\\'U/�/ge
%s/\\'y/�/ge
%s/\\'Y/�/ge
%s/\\'z/�/ge
%s/\\'Z/�/ge
%s/\\^a/�/ge
%s/\\^A/�/ge
%s/\\^\\i{}/�/ge
%s/\\^I/�/ge
%s/\\ss{}/�/ge
%s/\\ss{}/�/ge
%s/\\H{o}/�/ge
%s/\\H{O}/�/ge
%s/\\H{u}/�/ge
%s/\\H{U}/�/ge
%s/\\c{c}/�/ge
%s/\\c{C}/�/ge
%s/\\c{s}/�/ge
%s/\\c{S}/�/ge
%s/\\c{t}/�/ge
%s/\\c{T}/�/ge

echo "You see ".s:langcode1." encoding."
endfunction

" Function: s:AccentsToTeX() {{{2
" Change the encoding of the current file from 'one-letter-accents' to TeX.
function! s:AccentsToTeX()
%s/�/\\u{a}/ge
%s/�/\\u{A}/ge
%s/�/\\v{c}/ge
%s/�/\\v{C}/ge
%s/�/\\v{d}/ge
%s/�/\\v{D}/ge
%s/�/\\v{e}/ge
%s/�/\\v{E}/ge
%s/�/\\v{l}/ge
%s/�/\\v{L}/ge
%s/�/\\v{n}/ge
%s/�/\\v{N}/ge
%s/�/\\^o/ge
%s/�/\\^O/ge
%s/�/\\v{r}/ge
%s/�/\\v{R}/ge
%s/�/\\v{s}/ge
%s/�/\\v{S}/ge
%s/�/\\v{t}/ge
%s/�/\\v{T}/ge
%s/�/\\accent23u/ge
%s/�/\\accent23U/ge
%s/�/\\v{z}/ge
%s/�/\\v{Z}/ge
%s/�/\\"a/ge
%s/�/\\"A/ge
%s/�/\\"e/ge
%s/�/\\"E/ge
%s/�/\\"o/ge
%s/�/\\"O/ge
%s/�/\\"u/ge
%s/�/\\"U/ge
%s/�/\\k{a}/ge
%s/�/\\k{A}/ge
%s/�/\\eth{}/ge
%s/�/\\Eth{}/ge
%s/�/\\k{e}/ge
%s/�/\\k{E}/ge
%s/�/\\l{}/ge
%s/�/\\L{}/ge
%s/�/\\.z/ge
%s/�/\\.Z/ge
%s/�/\\'a/ge
%s/�/\\'A/ge
%s/�/\\'c/ge
%s/�/\\'C/ge
%s/�/\\'e/ge
%s/�/\\'E/ge
%s/�/\\'\\i{}/ge
%s/�/\\'I/ge
%s/�/\\'l/ge
%s/�/\\'L/ge
%s/�/\\'n/ge
%s/�/\\'N/ge
%s/�/\\'o/ge
%s/�/\\'O/ge
%s/�/\\'r/ge
%s/�/\\'R/ge
%s/�/\\'s/ge
%s/�/\\'S/ge
%s/�/\\'u/ge
%s/�/\\'U/ge
%s/�/\\'y/ge
%s/�/\\'Y/ge
%s/�/\\'z/ge
%s/�/\\'Z/ge
%s/�/\\^a/ge
%s/�/\\^A/ge
%s/�/\\^\\i{}/ge
%s/�/\\^I/ge
%s/�/\\ss{}/ge
%s/�/\\ss{}/ge
%s/�/\\H{o}/ge
%s/�/\\H{O}/ge
%s/�/\\H{u}/ge
%s/�/\\H{U}/ge
%s/�/\\c{c}/ge
%s/�/\\c{C}/ge
%s/�/\\c{s}/ge
%s/�/\\c{S}/ge
%s/�/\\c{t}/ge
%s/�/\\c{T}/ge

echo "You see ".s:langcode2." encoding."
endfunction
"}}}1
" Section: Command definitions {{{1
com! AccentsToTeX call s:AccentsToTeX()| call s:DKStex()
com! TeXToAccents call s:TeXToAccents()| call s:DKSaccents()
com! DKSaccents call s:DKSaccents()
com! DKStex call s:DKStex()
com! DKSunmap call s:DKSunmap()
"}}}1
" Section: Plugin mappings {{{1
nmap <unique> <silent> <leader>at :AccentsToTeX<cr> :DKStex<cr>
nmap <unique> <silent> <leader>ta :TeXToAccents<cr> :DKSaccents<cr>
nmap <unique> <silent> <leader>da :DKSaccents<cr>
nmap <unique> <silent> <leader>dt :DKStex<cr>
nmap <unique> <silent> <leader>du :DKSunmap<cr>
" }}}1
" Section: Plugin completion {{{1
call s:DKSaccents()
" }}}1
finish

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" v im:tw=78:ts=8:ft=help:norl:
" vim600: set foldmethod=marker tabstop=8 shiftwidth=2 softtabstop=2 smartindent smarttab
" fileencoding=iso-8859-2
