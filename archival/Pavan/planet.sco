;=============================================================;
;                                                            
;             "The Impossible Planet" (score)                 
;                                                           
;                 Luca Pavan - 1997                           
;                                                             
;=============================================================;
;Duration: 7'57"
;Hard Disk requirements: 85 Mb
;Compilation time: about 6 hours with a Pentium 120 Mhz

f1 0  262144 -1 "voice.wav" 0 0 0
f5 0 512 7 1 256 0 256 1
f6 0 512 7 0 256 1 256 0
f7 0 1024 7 0 256 1 256 0 512 0
f8 0 1024 7 1 256 0 256 1 512 1
f9 0 16384 9 .5 1 0
f10 0 512 21 9 1 1 2
f11 0 256 21 9 1 1 2
f12 0 128 21 9 1 1 2
f13 0 64 21 9 1 1 2
f14 0 32 21 9 1 1 2

;p5  = skiptime
;p6  = attack
;p7  = release
;p8  = minimal central frequency
;p9  = maximal central frequency
;p10 = bandwidth
;p11 = pan left channel
;p12 = pan right channel
;p13 = number of sound rotations
;p14 = number of sound stretching times
;p15 = initial pitch
;p16 = direction of rotation (0=left-right, 1=right-left)
;p17 = random functions for soundwarp
;p18 = switch for the bank of filters (0=no filtering)

;Part one
i1 0     16   .75 0  2 2  200 5000 5000  1    1  4  150 .1   0 10 0
i1 .03   .    .   .  . .  .   .    .     .    .  .  .    .   . .  .
i1 5     .    .   . .1 3  .   .    .    .65 .35  .  100  .   . .  .
i1 5.03  .    .   .  . .  .   .    .     .    .  .  .   .2   . .  .
i1 9     .    .   .  . .  .   .    .    .35 .65  .  50  .4   . .  .
i1 9.03  .    .   .  . .  .   .    .     .    .  .  .    .   . .  .
i1 20    .    .25 .  . .  .   .    .     1    1  .  .   .32  . .  .
i1 20.03 .    .   .  . .  .   .    .     .    .  .  52  .34  . .  .
i1 20.06 .    .   .  . .  .   .    .     .    .  .  103 .36  . .  .
i1 20.08 .    .   .  . .  .   .    .    .65 .35  .  104 .38  . .  .
i1 20.1  .    .   .  . .  .   .    .    .35 .65  .  51  .4   . .  .
i1 25    .    .   .  . .  .   .    .    .7   .3  .  137 .    1 .  .
i1 25.02 .    .   .  . .  .   .    .    .3   .7  .  138 .26  . .  .
i1 25.04 .    .   .  . .  .   .    .    .2   .8  .  139 .27  . .  .
i1 29.02 .    .   .  . .  .   .    .    .8   .2  .  64  .45  0 .  .
i1 29.04 .    .   .  . .  .   .    .    .4   .6  .  65  .451 . .  .
i1 29.06 .    .   .  . .  .   .    .    .6   .4  .  66  .452 . .  .
i1 35    .    .   .  . .  .   .    .     1    1  .  150 .12  1 .  .
i1 35.03 .    .   .  . .  .   .    .     .    .  .  151 .14  . .  .
i1 40.03 .    .   .  . .  .   .    .     .    .  .  .    .   . .  .
i1 50    .    .   .  . .  .   .    .     .    .  3  150  .   . .  .
i1 50.02 .    .   .  . .  .   .    .     .    .  .  .    .   . .  .
i1 50.04 .    .   .  . .  .   .    .     .    .  .  .   .2   . .  .
i1 54    .    .   .  . .  .   .    .     .    .  8  80  .31  1 .  .
i1 54.02 .    .   .  . .  .   .    .     .    .  .  81  .32  . .  .
i1 54.04 .    .   .  . .  .   .    .     .    .  .  82  .33  . .  .
i1 60.02 .    .   .  . .  .   .    .     .    .  .  180 .23  0 .  .
i1 60.06 .    .   .  . .  .   .    .     .    .  .  181 .241 . .  .
i1 60.1  .    .   .  . .  .   .    .     .    .  .  182 .252 . .  .
i1 60.16 .    .   .  . .  .   .    .     .    .  .  183 .263 . .  .
i1 70.16 .    .   . .1 10 .   .    .     .    .  .  .   .413 1 .  .
i1   .   .    .   .  . .  .   .    .     .    .  .  .   .414 . .  .
i1   .   .    .   .  . .  .   .    .     .    .  .  .   .415 . .  .
i1 74.1  12.9 .   .  . .  .   .    .     .    .  .  213 .313 . .  .
i1 74.2  12.8 .   .  . .  .   .    .     .    .  .  214 .324 . .  .
i1 74.3  12.7 .   .  . .  .   .    .     .    .  .  215 .335 . .  .
i1 0     .    .75 .  2 2  .   .    .     .    .  4  150  .   . .  .
i1 .03   .    .   .  . .  .   .    .     .    .  .  .    .   . .  .
i1 5     .    .   .  . 3  .   .    .    .65  .35 .  100 .2   . .  .
i1 5.03  .    .   .  . .  .   .    .     .    .  .  .    .   . .  .
i1 9     .    .   .  . .  .   .    .    .35  .65 .  50  .4   . .  .
i1 9.03  .    .   .  . .  .   .    .     .    .  .  .    .   . .  .
i1 20    .    .   .  . .  .   .    .     1    1  .  .   .32  . .  .
i1 20.03 .    .   .  . .  .   .    .     .    .  .  52  .34  . .  .
i1 20.06 .    .   .  . .  .   .    .     .    .  .  103 .36  . .  .
i1 20.08 .    .   .  . .  .   .    .    .65  .35 .  104 .38  . .  .
i1 20.1  .    .   .  . .  .   .    .    .35  .65 .  51  .4   . .  .
i1 25    .    .   .  . .  .   .    .    .7   .3  .  137 .    0 .  .
i1 25.02 .    .   .  . .  .   .    .    .3   .7  .  138 .26  . .  .
i1 25.04 .    .   .  . .  .   .    .    .2   .8  .  139 .27  . .  .
i1 29.02 .    .   .  . .  .   .    .    .8   .2  .  64  .45  1 .  .
i1 29.04 .    .   .  . .  .   .    .    .4   .6  .  65  .451 . .  .
i1 29.06 .    .   .  . .  .   .    .    .6   .4  .  66  .452 . .  .
i1 35    .    .   .  . .  .   .    .     1    1  .  150 .12  0 .  .
i1 35.03 .    .   .  . .  .   .    .     .    .  .  151 .14  . .  .
i1 40.03 .    .   .  . .  .   .    .     .    .  .  .    .   . .  .
i1 50    .    .   .  . .  .   .    .     .    .  3  150  .   . .  .
i1 50.02 .    .   .  . .  .   .    .     .    .  .  .    .   . .  .
i1 50.04 .    .   .  . .  .   .    .     .    .  .  .   .2   . .  .
i1 54    .    .   .  . .  .   .    .     .    .  8  80  .31  0 .  .
i1 54.02 .    .   .  . .  .   .    .     .    .  .  81  .32  . .  .
i1 54.04 .    .   .  . .  .   .    .     .    .  .  82  .33  . .  .
i1 60.02 .    .   .  . .  .   .    .     .    .  .  180 .23  1 .  .
i1 60.06 .    .   .  . .  .   .    .     .    .  .  181 .241 . .  .
i1 60.1  .    .   .  . .  .   .    .     .    .  .  182 .252 . .  .
i1 60.16 .    .   .  . .  .   .    .     .    .  .  183 .263 . .  .
i1 70.16 .    .   . .1 10 .   .    .     .    .  .  .   .413 0 .  .
i1   .   .    .   .  . .  .   .    .     .    .  .  .   .414 . .  .
i1   .   .    .   .  . .  .   .    .     .    .  .  .   .415 . .  .
i1 74.1  12.9 .   .  . .  .   .    .     .    .  .  213 .313 . .  .
i1 74.2  12.8 .   .  . .  .   .    .     .    .  .  214 .324 . .  .
i1 74.3  12.7 .   .  . .  .   .    .     .    .  .  215 .335 . .  .

;Part two
i1 60     180 3   .  4 3  .   .    .     .    .  2  250  .   . .  1
i1  .      .  2   .  . .  .   .    .     .    .  .  .    .   . .  .
i1 60.03   .  .   .  . .  .   .    .     .    .  20 250  .   1 .  .
i1 75      .  .   .  . .  .   .    .    .65  .35 .  200 .2   0 11 .
i1 75.03   .  .   .  . .  .   .    .     .    .  .  .    .   1 .  .
i1 79      .  .   .  . .  .   .    .    .35  .65 30 150 .3   0 12 .
i1 79.03   .  .   .  . .  .   .    .     .    .  .  .    .   1 .  .
i1 83      .  .   .  . .  .   .    .     1    1  .  100 .4   0 13 .
i1 87      .  .   .  . .  .   .    .     .    .  .  50  .5   1 14 .
i1 180     .  .   .  . .  .   .    .     .    .  .  .    .   0 10 .
i1 180.02  90 .   .  . .  .   .    .    .65  .35 .  235  .   1 .  .
i1 180.04  .  .   .  . .  .   .    .    .35  .65 .  236 .3   0 .  .
i1 181     .  .   .  . .  .   .    .    .7   .3  .  237 .35  1 11 .
i1 181.02  .  .   .  . .  .   .    .    .3   .7  .  238 .4   0 .  .
i1 182     .  1.7 .  . .  .   .    .    .2   .8  .  239 .45  1 12 .
i1 182.02  .  .   .  . .  .   .    .    .8   .2  .  240 .5   0 .  .
i1 182.04  .  .   .  . .  .   .    .    .4   .6  .  241  .   1 .  .
i1 182.06  .  .   .  . .  .   .    .    .6   .4  .  242  .   0 .  .
i1 185     .  1.4 .  . .  .   .    .    .65  .35 .  243 .2   1 13 .
i1 185.02  .  .   .  . .  .   .    .    .35  .65 .  244  .   0 .  .
i1 200     16 .6  .  2 .  .   .    .     1    1  6  150  .   . 10 0
i1 200.03  .  .   .  . .  .   .    .     .    .  .  .    .   . .  .
i1 205     .  .   .  . 4  .   .    .    .35  .65 .  100 .2   . .  .
i1 205.03  .  .   .  . .  .   .    .     .    .  .  .    .   . .  .
i1 209     .  .   .  . .  .   .    .    .65  .35 .  50  .4   . .  .
i1 209.03  .  .   .  . .  .   .    .     .    .  .  .    .   . .  .
i1 260    180 2   .  . 10 .   .    .     1    1  30 150 .3   1 14 1
i1 260.02  .  .   .  . .  .   .    .     .    .  .  .    .   0 .  .
i1 270     .  .   .  . .  .   .    .     .    .  .  250  .   1 10 .
i1 270.02  .  .   .  . .  .   .    .     .    .  .  .    .   0 .  .
i1 276    196 .   .  . .  .   .    .     .    .  .  .   .2   1 11 .
i1 277    197 .   .  . .  .   .    .     .    .  .  .    .   0 12 .
 
;ins strt dur
i99  0    477
e
