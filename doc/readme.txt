Files:			dks-il2.vim, dks-TeX.vim, nodks.vim

Maintainer:		Milan Berta <bertm0am@artax.karlin.mff.cuni.cz>

Last Changed:	28.10.2003

Description: 	All ISO-8859-2 characters (except [a-z] [A-Z]) are defined.
- digraphs (see 'digraphs') but not all CTRL-K {char1} {char2} work the way that
  I want and it does not work in command-line mode and search. Or
- keymap (see 'loadkeymap') but it does not works to me anyway, and in
  $vim/keymap/accents.vim there are no all CZ, HU and SK chars (and available in
ISO-8859-2).  This 'keymap' shows more MSWord "compatibility" for Middle Europe
(I think) - for those who works half-time with Word :-)

Where:			All files in $HOME/.vim/, dks-il2.vim hard-linked to
$HOME/.vim/plugin/
