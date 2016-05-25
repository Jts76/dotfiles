Slow movement
============== 
Character-wise movements with the home keys: h, j, k and l. The lesson here: DON’T use the arrow keys.

Line terminus 
==============
Beginning of line and end of line movements: 0 and $.

The different types of “words”
==============================
words – represent a sequence of characters in the 'iskeyword' class.
WORDs – represent a sequence of characters separated by whitespace.
Run :help word and :help WORD

Forward word movement
===================== 
We learn to move foward to the next WORD and word both to the beginning of words and the end of words. Commands are w, W, e and E.

Backward word movement 
======================
And we learn to move backward to the previous WORD and word both to the beginning of words and the end of words. Commands are b, B, ge and gE.

“To the Character” movement 
===========================
The great, super great commands f, F, t, T and ; that let you move to specific characters within a line.

Paging 
======
Moving the page up and down by full pages with CTRL-f and CTRL-b and by half pages with CTRL-u and CTRL-d.

Cursor jumping to screen parts 
==============================
Moving to the head, middle and last line of a screen with H, M and L respectively.

Top and Bottom of the buffer 
============================
Jumping to the top line of the entire buffer with gg and the bottom of the entire buffer with G.

Jumping to a particular line 
=============================
Get to a specific line number with <number>G.

Easy regular expression searching 
==================================
The famous ‘*‘ and ‘#‘ keys for jumping by bounded regular expression.

Manual regular expression searching 
===================================
Using ‘/‘ and ‘?‘ to manually search.

Start of Function or Class Jumping 
==================================
Moving to the beginning of functions and classes backwards through the buffer with [[ and the beginning of functions and classes forwards through the buffer with ]] (assuming you code properly and put braces for these things in column 0 (hanging brace?? Come on! :D).

End of Function or Class Jumping 
================================
Forwards to the end of a function or class definition with ][ and backwards to the end of a function or class definition with [].

Jumping to Matching Braces 
==========================
The fantastic % characters.

Marks 
=====
Basic mark functionality and how it works with m, ' and `.


