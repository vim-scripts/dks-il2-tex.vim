" Name:		dks-win+tex.vim
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
let s:langcode1 = "cp1250"
let s:langcode2 = "TeX"
"}}}1
" Section: Mapping and unmapping deadkeys {{{1
" Function: s:DKSaccents() {{{2
" Mapping accents from accented encoding.
function! s:DKSaccents()
  noremap! +a „
  noremap! +A √
  noremap! +c Ë
  noremap! +C »
  noremap! +d Ô
  noremap! +D œ
  noremap! +e Ï
  noremap! +E Ã
  noremap! +l æ
  noremap! +L º
  noremap! +n Ú
  noremap! +N “
  noremap! +o Ù
  noremap! +O ‘
  noremap! +r ¯
  noremap! +R ÿ
  noremap! +s ö
  noremap! +S ä
  noremap! +t ù
  noremap! +T ç
  noremap! +u ˘
  noremap! +U Ÿ
  noremap! +z û
  noremap! +Z é

  noremap! :a ‰
  noremap! :A ƒ
  noremap! :e Î
  noremap! :E À
  noremap! :o ˆ
  noremap! :O ÷
  noremap! :u ¸
  noremap! :U ‹

  noremap! .a π
  noremap! .A •
  noremap! .d 
  noremap! .D –
  noremap! .e Í
  noremap! .E  
  noremap! .l ≥
  noremap! .L £
  noremap! .z ø
  noremap! .Z Ø

  noremap! =a ·
  noremap! =A ¡
  noremap! =c Ê
  noremap! =C ∆
  noremap! =e È
  noremap! =E …
  noremap! =i Ì
  noremap! =I Õ
  noremap! =l Â
  noremap! =L ≈
  noremap! =n Ò
  noremap! =N —
  noremap! =o Û
  noremap! =O ”
  noremap! =r ‡
  noremap! =R ¿
  noremap! =s ú
  noremap! =S å
  noremap! =u ˙
  noremap! =U ⁄
  noremap! =y ˝
  noremap! =Y ›
  noremap! =z ü
  noremap! =Z è

  noremap! ^a ‚
  noremap! ^A ¬
  noremap! ^i Ó
  noremap! ^I Œ
  noremap! ^s ﬂ
  noremap! ^S ﬂ

  noremap! ;o ı
  noremap! ;O ’
  noremap! ;u ˚
  noremap! ;U €

  noremap! ,c Á
  noremap! ,C «
  noremap! ,s ∫
  noremap! ,S ™
  noremap! ,t ˛
  noremap! ,T ﬁ

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
  noremap! +s v{s}
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
%s/\\u{a}/„/ge
%s/\\u{A}/√/ge
%s/\\v{c}/Ë/ge
%s/\\v{C}/»/ge
%s/\\v{d}/Ô/ge
%s/\\v{D}/œ/ge
%s/\\v{e}/Ï/ge
%s/\\v{E}/Ã/ge
%s/\\v{l}/æ/ge
%s/\\v{L}/º/ge
%s/\\v{n}/Ú/ge
%s/\\v{N}/“/ge
%s/\\^o/Ù/ge
%s/\\^O/‘/ge
%s/\\v{r}/¯/ge
%s/\\v{R}/ÿ/ge
%s/\\v{s}/ö/ge
%s/\\v{S}/ä/ge
%s/\\v{t}/ù/ge
%s/\\v{T}/ç/ge
%s/\\accent23u/˘/ge
%s/\\accent23U/Ÿ/ge
%s/\\v{z}/û/ge
%s/\\v{Z}/é/ge
%s/\\"a/‰/ge
%s/\\"A/ƒ/ge
%s/\\"e/Î/ge
%s/\\"E/À/ge
%s/\\"o/ˆ/ge
%s/\\"O/÷/ge
%s/\\"u/¸/ge
%s/\\"U/‹/ge
%s/\\k{a}/π/ge
%s/\\k{A}/•/ge
%s/\\eth{}//ge
%s/\\Eth{}/–/ge
%s/\\k{e}/Í/ge
%s/\\k{E}/ /ge
%s/\\l{}/≥/ge
%s/\\L{}/£/ge
%s/\\.z/ø/ge
%s/\\.Z/Ø/ge
%s/\\'a/·/ge
%s/\\'A/¡/ge
%s/\\'c/Ê/ge
%s/\\'C/∆/ge
%s/\\'e/È/ge
%s/\\'E/…/ge
%s/\\'\\i{}/Ì/ge
%s/\\'I/Õ/ge
%s/\\'l/Â/ge
%s/\\'L/≈/ge
%s/\\'n/Ò/ge
%s/\\'N/—/ge
%s/\\'o/Û/ge
%s/\\'O/”/ge
%s/\\'r/‡/ge
%s/\\'R/¿/ge
%s/\\'s/ú/ge
%s/\\'S/å/ge
%s/\\'u/˙/ge
%s/\\'U/⁄/ge
%s/\\'y/˝/ge
%s/\\'Y/›/ge
%s/\\'z/ü/ge
%s/\\'Z/è/ge
%s/\\^a/‚/ge
%s/\\^A/¬/ge
%s/\\^\\i{}/Ó/ge
%s/\\^I/Œ/ge
%s/\\ss{}/ﬂ/ge
%s/\\ss{}/ﬂ/ge
%s/\\H{o}/ı/ge
%s/\\H{O}/’/ge
%s/\\H{u}/˚/ge
%s/\\H{U}/€/ge
%s/\\c{c}/Á/ge
%s/\\c{C}/«/ge
%s/\\c{s}/∫/ge
%s/\\c{S}/™/ge
%s/\\c{t}/˛/ge
%s/\\c{T}/ﬁ/ge

echo "You see ".s:langcode1." encoding."
endfunction

" Function: s:AccentsToTeX() {{{2
" Change the encoding of the current file from 'one-letter-accents' to TeX.
function! s:AccentsToTeX()
%s/„/\\u{a}/ge
%s/√/\\u{A}/ge
%s/Ë/\\v{c}/ge
%s/»/\\v{C}/ge
%s/Ô/\\v{d}/ge
%s/œ/\\v{D}/ge
%s/Ï/\\v{e}/ge
%s/Ã/\\v{E}/ge
%s/æ/\\v{l}/ge
%s/º/\\v{L}/ge
%s/Ú/\\v{n}/ge
%s/“/\\v{N}/ge
%s/Ù/\\^o/ge
%s/‘/\\^O/ge
%s/¯/\\v{r}/ge
%s/ÿ/\\v{R}/ge
%s/ö/\\v{s}/ge
%s/ä/\\v{S}/ge
%s/ù/\\v{t}/ge
%s/ç/\\v{T}/ge
%s/˘/\\accent23u/ge
%s/Ÿ/\\accent23U/ge
%s/û/\\v{z}/ge
%s/é/\\v{Z}/ge
%s/‰/\\"a/ge
%s/ƒ/\\"A/ge
%s/Î/\\"e/ge
%s/À/\\"E/ge
%s/ˆ/\\"o/ge
%s/÷/\\"O/ge
%s/¸/\\"u/ge
%s/‹/\\"U/ge
%s/π/\\k{a}/ge
%s/•/\\k{A}/ge
%s//\\eth{}/ge
%s/–/\\Eth{}/ge
%s/Í/\\k{e}/ge
%s/ /\\k{E}/ge
%s/≥/\\l{}/ge
%s/£/\\L{}/ge
%s/ø/\\.z/ge
%s/Ø/\\.Z/ge
%s/·/\\'a/ge
%s/¡/\\'A/ge
%s/Ê/\\'c/ge
%s/∆/\\'C/ge
%s/È/\\'e/ge
%s/…/\\'E/ge
%s/Ì/\\'\\i{}/ge
%s/Õ/\\'I/ge
%s/Â/\\'l/ge
%s/≈/\\'L/ge
%s/Ò/\\'n/ge
%s/—/\\'N/ge
%s/Û/\\'o/ge
%s/”/\\'O/ge
%s/‡/\\'r/ge
%s/¿/\\'R/ge
%s/ú/\\'s/ge
%s/å/\\'S/ge
%s/˙/\\'u/ge
%s/⁄/\\'U/ge
%s/˝/\\'y/ge
%s/›/\\'Y/ge
%s/ü/\\'z/ge
%s/è/\\'Z/ge
%s/‚/\\^a/ge
%s/¬/\\^A/ge
%s/Ó/\\^\\i{}/ge
%s/Œ/\\^I/ge
%s/ﬂ/\\ss{}/ge
%s/ﬂ/\\ss{}/ge
%s/ı/\\H{o}/ge
%s/’/\\H{O}/ge
%s/˚/\\H{u}/ge
%s/€/\\H{U}/ge
%s/Á/\\c{c}/ge
%s/«/\\c{C}/ge
%s/∫/\\c{s}/ge
%s/™/\\c{S}/ge
%s/˛/\\c{t}/ge
%s/ﬁ/\\c{T}/ge

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
