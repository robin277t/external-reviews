MegaSfot Weird brief

We are looking a spellchecker

Give program a string, containing one or multiple words, and highlight incorrectly spelled words within that string

Like a test dictionary to be created and used for purposes of creating demo program

'Highlighting' means prefix and suffix with a tilde '~'

Words in UK english, anything (including non a-z symbols) should be considered mis-spelled. Ignore capitalizaion.

INPUT - OUTPUT TABLE

"The bear went to the woods" - "The bear went to the woods"
"The beear went to the woods" - "The ~beear~ went to the woods"
"The bear wen£t to the woods" - "The bear ~wen£t~ to the woods"
"ThE BeAR went to the woods" - "ThE BeAR went to the woods"

Dictionary["the", "bear", "went", "to", "the", "woods"]