" Maintainer:	Milan Berta <bertm0am@artax.karlin.mff.cuni.cz>
" Last Changed:	28.10.2003
" Way:			cstocs -il2 -tex dks-il2.vim > dks-TeX.vim; then: where is not
" <space> automaticaly (after special character) paste <space><bs>
" Description:	All ISO-8859-2 characters (except [a-z] [A-Z]) are defined.
" See readme.txt

imap <F9>      <ESC><F9>
map <F9>      :source $HOME/.vim/nodks.vim<CR>

map! +<space>	++<bs> 
map! +a	\u a
map! +A	\u A
map! +c	\v c
map! +C	\v C
map! +d	\v d
map! +D	\v D
map! +e	\v e
map! +E	\v E
map! +l	\v l
map! +L	\v L
map! +n	\v n
map! +N	\v N
map! +o	\^ <bs>o
map! +O	\^ <bs>O
map! +r	\v r
map! +R	\v R
map! +s	\v s
map! +S	\v S
map! +t	\v t
map! +T	\v T
map! +u	\accent23u
map! +U	\accent23U
map! +z	\v z
map! +Z	\v Z

map! '<space>	''<bs> 
map! 'a	\" <bs>a
map! 'A	\" <bs>A
map! 'e	\" <bs>e
map! 'E	\" <bs>E
map! 'o	\" <bs>o
map! 'O	\" <bs>O
map! 'u	\" <bs>u
map! 'U	\" <bs>U

map! .<space>	..<bs> 
map! .a	\k a
map! .A	\k A
map! .d	\eth{}
map! .D	\Eth{}
map! .e	\k e
map! .E	\k E
map! .l	\l{}
map! .L	\L{}
map! .z	\. <bs>z
map! .Z	\. <bs>Z

map! =<space>	==<bs> 
map! =a	\' <bs>a
map! =A	\' <bs>A
map! =c	\' <bs>c
map! =C	\' <bs>C
map! =e	\' <bs>e
map! =E	\' <bs>E
map! =i	\' <bs>\i{}
map! =I	\' <bs>I
map! =l	\' <bs>l
map! =L	\' <bs>L
map! =n	\' <bs>n
map! =N	\' <bs>N
map! =o	\' <bs>o
map! =O	\' <bs>O
map! =r	\' <bs>r
map! =R	\' <bs>R
map! =s	\' <bs>s
map! =S	\' <bs>S
map! =u	\' <bs>u
map! =U	\' <bs>U
map! =y	\' <bs>y
map! =Y	\' <bs>Y
map! =z	\' <bs>z
map! =Z	\' <bs>Z

map! ^<space>	^^<bs> 
map! ^a	\^ <bs>a
map! ^A	\^ <bs>A
map! ^i	\^ <bs>\i{}
map! ^I	\^ <bs>I
map! ^s	\ss{}
map! ^S	\ss{}

map! "<space>	""<bs> 
map! "o	\H o
map! "O	\H O
map! "u	\H u
map! "U	\H U

map! ,<space>	,,<bs> 
map! ,c	\c c
map! ,C	\c C
map! ,s	\c s
map! ,S	\c S
map! ,t	\c t
map! ,T	\c T

