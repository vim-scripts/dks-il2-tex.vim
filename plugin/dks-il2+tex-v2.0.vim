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
  noremap! +a ã
  noremap! +A Ã
  noremap! +c è
  noremap! +C È
  noremap! +d ï
  noremap! +D Ï
  noremap! +e ì
  noremap! +E Ì
  noremap! +l µ
  noremap! +L ¥
  noremap! +n ò
  noremap! +N Ò
  noremap! +o ô
  noremap! +O Ô
  noremap! +r ø
  noremap! +R Ø
  noremap! +s ¹
  noremap! +S ©
  noremap! +t »
  noremap! +T «
  noremap! +u ù
  noremap! +U Ù
  noremap! +z ¾
  noremap! +Z ®

  noremap! :a ä
  noremap! :A Ä
  noremap! :e ë
  noremap! :E Ë
  noremap! :o ö
  noremap! :O Ö
  noremap! :u ü
  noremap! :U Ü

  noremap! .a ±
  noremap! .A ¡
  noremap! .d ð
  noremap! .D Ð
  noremap! .e ê
  noremap! .E Ê
  noremap! .l ³
  noremap! .L £
  noremap! .z ¿
  noremap! .Z ¯

  noremap! =a á
  noremap! =A Á
  noremap! =c æ
  noremap! =C Æ
  noremap! =e é
  noremap! =E É
  noremap! =i í
  noremap! =I Í
  noremap! =l å
  noremap! =L Å
  noremap! =n ñ
  noremap! =N Ñ
  noremap! =o ó
  noremap! =O Ó
  noremap! =r à
  noremap! =R À
  noremap! =s ¶
  noremap! =S ¦
  noremap! =u ú
  noremap! =U Ú
  noremap! =y ý
  noremap! =Y Ý
  noremap! =z ¼
  noremap! =Z ¬

  noremap! ^a â
  noremap! ^A Â
  noremap! ^i î
  noremap! ^I Î
  noremap! ^s ß
  noremap! ^S ß

  noremap! ;o õ
  noremap! ;O Õ
  noremap! ;u û
  noremap! ;U Û

  noremap! ,c ç
  noremap! ,C Ç
  noremap! ,s º
  noremap! ,S ª
  noremap! ,t þ
  noremap! ,T Þ

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
%s/\\u{a}/ã/ge
%s/\\u{A}/Ã/ge
%s/\\v{c}/è/ge
%s/\\v{C}/È/ge
%s/\\v{d}/ï/ge
%s/\\v{D}/Ï/ge
%s/\\v{e}/ì/ge
%s/\\v{E}/Ì/ge
%s/\\v{l}/µ/ge
%s/\\v{L}/¥/ge
%s/\\v{n}/ò/ge
%s/\\v{N}/Ò/ge
%s/\\^o/ô/ge
%s/\\^O/Ô/ge
%s/\\v{r}/ø/ge
%s/\\v{R}/Ø/ge
%s/\\v{s}/¹/ge
%s/\\v{S}/©/ge
%s/\\v{t}/»/ge
%s/\\v{T}/«/ge
%s/\\accent23u/ù/ge
%s/\\accent23U/Ù/ge
%s/\\v{z}/¾/ge
%s/\\v{Z}/®/ge
%s/\\"a/ä/ge
%s/\\"A/Ä/ge
%s/\\"e/ë/ge
%s/\\"E/Ë/ge
%s/\\"o/ö/ge
%s/\\"O/Ö/ge
%s/\\"u/ü/ge
%s/\\"U/Ü/ge
%s/\\k{a}/±/ge
%s/\\k{A}/¡/ge
%s/\\eth{}/ð/ge
%s/\\Eth{}/Ð/ge
%s/\\k{e}/ê/ge
%s/\\k{E}/Ê/ge
%s/\\l{}/³/ge
%s/\\L{}/£/ge
%s/\\.z/¿/ge
%s/\\.Z/¯/ge
%s/\\'a/á/ge
%s/\\'A/Á/ge
%s/\\'c/æ/ge
%s/\\'C/Æ/ge
%s/\\'e/é/ge
%s/\\'E/É/ge
%s/\\'\\i{}/í/ge
%s/\\'I/Í/ge
%s/\\'l/å/ge
%s/\\'L/Å/ge
%s/\\'n/ñ/ge
%s/\\'N/Ñ/ge
%s/\\'o/ó/ge
%s/\\'O/Ó/ge
%s/\\'r/à/ge
%s/\\'R/À/ge
%s/\\'s/¶/ge
%s/\\'S/¦/ge
%s/\\'u/ú/ge
%s/\\'U/Ú/ge
%s/\\'y/ý/ge
%s/\\'Y/Ý/ge
%s/\\'z/¼/ge
%s/\\'Z/¬/ge
%s/\\^a/â/ge
%s/\\^A/Â/ge
%s/\\^\\i{}/î/ge
%s/\\^I/Î/ge
%s/\\ss{}/ß/ge
%s/\\ss{}/ß/ge
%s/\\H{o}/õ/ge
%s/\\H{O}/Õ/ge
%s/\\H{u}/û/ge
%s/\\H{U}/Û/ge
%s/\\c{c}/ç/ge
%s/\\c{C}/Ç/ge
%s/\\c{s}/º/ge
%s/\\c{S}/ª/ge
%s/\\c{t}/þ/ge
%s/\\c{T}/Þ/ge

echo "You see ".s:langcode1." encoding."
endfunction

" Function: s:AccentsToTeX() {{{2
" Change the encoding of the current file from 'one-letter-accents' to TeX.
function! s:AccentsToTeX()
%s/ã/\\u{a}/ge
%s/Ã/\\u{A}/ge
%s/è/\\v{c}/ge
%s/È/\\v{C}/ge
%s/ï/\\v{d}/ge
%s/Ï/\\v{D}/ge
%s/ì/\\v{e}/ge
%s/Ì/\\v{E}/ge
%s/µ/\\v{l}/ge
%s/¥/\\v{L}/ge
%s/ò/\\v{n}/ge
%s/Ò/\\v{N}/ge
%s/ô/\\^o/ge
%s/Ô/\\^O/ge
%s/ø/\\v{r}/ge
%s/Ø/\\v{R}/ge
%s/¹/\\v{s}/ge
%s/©/\\v{S}/ge
%s/»/\\v{t}/ge
%s/«/\\v{T}/ge
%s/ù/\\accent23u/ge
%s/Ù/\\accent23U/ge
%s/¾/\\v{z}/ge
%s/®/\\v{Z}/ge
%s/ä/\\"a/ge
%s/Ä/\\"A/ge
%s/ë/\\"e/ge
%s/Ë/\\"E/ge
%s/ö/\\"o/ge
%s/Ö/\\"O/ge
%s/ü/\\"u/ge
%s/Ü/\\"U/ge
%s/±/\\k{a}/ge
%s/¡/\\k{A}/ge
%s/ð/\\eth{}/ge
%s/Ð/\\Eth{}/ge
%s/ê/\\k{e}/ge
%s/Ê/\\k{E}/ge
%s/³/\\l{}/ge
%s/£/\\L{}/ge
%s/¿/\\.z/ge
%s/¯/\\.Z/ge
%s/á/\\'a/ge
%s/Á/\\'A/ge
%s/æ/\\'c/ge
%s/Æ/\\'C/ge
%s/é/\\'e/ge
%s/É/\\'E/ge
%s/í/\\'\\i{}/ge
%s/Í/\\'I/ge
%s/å/\\'l/ge
%s/Å/\\'L/ge
%s/ñ/\\'n/ge
%s/Ñ/\\'N/ge
%s/ó/\\'o/ge
%s/Ó/\\'O/ge
%s/à/\\'r/ge
%s/À/\\'R/ge
%s/¶/\\'s/ge
%s/¦/\\'S/ge
%s/ú/\\'u/ge
%s/Ú/\\'U/ge
%s/ý/\\'y/ge
%s/Ý/\\'Y/ge
%s/¼/\\'z/ge
%s/¬/\\'Z/ge
%s/â/\\^a/ge
%s/Â/\\^A/ge
%s/î/\\^\\i{}/ge
%s/Î/\\^I/ge
%s/ß/\\ss{}/ge
%s/ß/\\ss{}/ge
%s/õ/\\H{o}/ge
%s/Õ/\\H{O}/ge
%s/û/\\H{u}/ge
%s/Û/\\H{U}/ge
%s/ç/\\c{c}/ge
%s/Ç/\\c{C}/ge
%s/º/\\c{s}/ge
%s/ª/\\c{S}/ge
%s/þ/\\c{t}/ge
%s/Þ/\\c{T}/ge

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
