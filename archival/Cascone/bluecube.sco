;================================================================
;   bluecube.sco
;===============================================================

f1  0 512   9 1 1 0                                    ;sine lo-res
f2  0 512   5 4096 512 1                               ;exp env
f3  0 512   9 10 1 0 16 1.5 0 22 2 0 23 1.5 0          ;inharm wave
f4  0 512   9 1 1 0                                    ;sine
f8  0 512   5 256 512 1                                ;exp env
f9  0 512   5 1   512 1                                ;constant value of 1
f10 0 512   7 0 50 1 50 .5 300 .5 112 0                ;ADSR
f11 0 2048 10 1                                        ;SINE WAVE hi-res
f13 0 1024  7 0 256 1 256 0 256 -1 256 0               ;triangle
f14 0 512   7 1 17  1 0   0 495                        ;pulse for S&H clk osc
f15 0 512   7 0 512 1 0                                ;ramp up;;;left=>right
f16 0 512   7 1 512 0 0                                ;ramp down;;;right=>left
f17 0 1024  7 .5 256 1 256 .5 256 0 256 .5             ;triangle with offset
f18 0 512   5 1 512 256                                ;reverse exp env
f20 0 1024 10 1 0 0 0 .7 .7 .7 .7 .7 .7                ;approaching square
;------------------------------------------------------------------------

;this is for reverb settings
;===========================
;p1  p2   p3   p4   p5
;instr    strt dur  rvbtime   hfdif
i99  0    190  6    .2

;this is for the delay line
;==========================
;p1  p2   p3   p4
;instr    strt dur  dltime
i98  0    190  .66  

                         ;straight line
;              f.losin   namp|     ring mod__________| noisefrq
;p1  p2   p3   p4   p5   p6   p7   p8   p9
;instr    strt dur  freq amp  kfreq1    kfreq2    kamp2     nfrq
i1    5.00     40   200  6000      60   134  50   70
i1   10.00     10   300  6000      32   83   .    2000 
i1   23.00     20   400  5000      863  638  .    350
i1   45.00     15   100  6000 400  210  .    100
i1   50   10   440  3500 60   120  .    440
i1   60   20   500  5000 500  450  .    1000
i1   75   30   220  4000 250  700  .    660
i1   90   10   300  2600 385  187  .    345
i1   100  23   230  2300 320  567  .    777
i1   120  30   440  4400 765  974  .    958
i1   140  30   300  3500 250  120  .    458
i1   160  20   450  4500 385  700  30   600
i1   175  15   220  4000 550  320  10   1200
i1   180  10   240  3450 430  340  3    2000

;p1  p2   p3   p4   p5
;instr    strt dur  envamp    kfreq
i2   0.000     60   1500 1000
i2   10.00     50   .    1700
i2   20.00     40   .    2100
i2   30   60   .    1997 ;this i was strt=0.000 but was changed to 20
i2   50   40   .    1250
i2   70   30   .    2300 ;this starts new notes
i2   90   50   1000 3000
i2   120  20   700  2400
i2   160  30   500  1600
i2   170  20   200  2600




;p1  p2   p3   p4   p5   p6
;instr    strt dur  frq  amp  kpan
i3   0    .125 100  2000 1
i3   0.5  .125 200  1000 0.5
i3   0.75 .    400  1000 0
i3   0.85 .    800  900  1
i3   10   .    400  800  0    
i3   10.25     .    800  800  0.5
i3   10.50     .    400  700  0
i3   35   .10  800  1000 1
i3   35.25     .    880  3000 0.5
i3   35.50     .    900  3000 1
i3   35.75     .    940  3000 0
i3   35.90     .    1250 3000 0.5
;;============================================
;;  notes below no longer in use
;;============================================
;;i3 40.00     .    940  3000
;;i3 51.00     .    800  2000
;;i3 51.20     .    880  .
;;i3 51.40     .    900  .
;;i3 51.60     .    920  .
;;i3 51.80     .    940  .
;;i3 52.00     .    1250 .
;;i3 52.20     .    940  .
;;============================================
;p1  p2   p3   p4   p5   p6
;instr    strt dur  frq  amp  kpan
i3   45   1    600  3000 0
i3   46.5 .9   400  3000 0.5
i3   47.5 .7   200  3000 0
i3   48.5 .5   100  3000 1

i3   186  .2   100  1500 0
i3   186.1     .2   200  .    .25
i3   186.2     .2   400  .    .5
i3   186.3     .2   800  .    .75
i3   186.4     .2   1600 .    1
;i3  186.5     .2   3200 .    .75
;i3  186.6     .2   6400 .    .5
;i3  186.7     .2   12800     .    .25
;i3  186.8     .2   25600     .    0    

;============================================
;    SAMPLE AND HOLD INSTR
;============================================
;p1  p2   p3   p4   p5   p6
;i   strt dur  iseed     amp  clk
i4   30   3    .3   2.5  7
;i4  45   2    .2   2    6
;i4  55   5    .5   1    7
;i4  62   2    .234 4.5  7
i4   65   5    .456 9    8.5
i4   79   6    .334 7    10

i4   175  10   .625 2    7         ;new note



;==============================================
;    FM INSTR
;==============================================
;p1    p2    p3   p4   p5   p6   p7   p8   p9   p10
;instr strt  dur  frq  car  mod  kpan kndx kamp rvbsnd
i5     61    .8   4500 3.25 1.10 0    9.7  4    .09
i5     61.85 .    5040 2.3  2.25 1    8.3  4    .
i5     62.00 1    6340 3.3  1.35 0    8.2  4    .
i5     62.75 .    2600 3.6  1.26 1    3.2  3.5  .
i5     63.25 .    2750 2.74 1.33 0    2.33 3.25 .
i5     76    .    5000 4    2.23 1    7.5  3    .5
i5     77    1.5  6000 5.25 2.76 0    8.9  3    .5


;====================================
;    Clicky filter w/pan
;====================================
;p1  p2   p3
;instr    strt dur
i6   100  3.5       ;was @70
i6   180  5


;======================================
;
;    UNMODIFIED NOISEBAND GLISSANDO
;
;=======================================
;p1  p2   p3   p4   p5   p6
;instr    strt dur  kswpst    kswpend   outgain
;i7  90   3    500  100  .05  
;i7  91.00     5.5  25   175  .05
;i7  91.33     2.0  200  135  .01
;i7  91.84     1.75 100  700  .01
;i7  92.00     2.55 1000 500  .01
;i7  92.56     3    100  200  .05
;i7  93.00     .35  2000 100  .01
;i7  93.98     .55  200  1500 .01
;i7  94.25     .85  2000 100  .01
;i7  94.55     2    100  1600 .06
;i7  94.60     1    550  20   .05
;i7  95.50     .55  50   1300 .01
;i7  95.90     .75  1350 100  .01
;i7  96.33     3    300  100  .05
;i7  96.64     .75  75   300  .01
;i7  97.00     5    350  1000 .05
;i7  97.66     2    125  1350 .05
;i7  97.77     .75  200  350  .02
;i7  97.88     .35  125  1350 .02
;i7  97.99     3    785  75   .03
;i7  98.11     5    1350 125  .05
;i7  98.33     2    850  1250 .03
;i7  98.44     .5   1250 600  .02
;i7  98.55     .5   2350 800  .01
;i7  98.66     .75  1350 100  .01
;i7  98.77     .5   1350 450  .01
;i7  98.88     .5   450  1250 .01
;i7  98.99     3    1350 185  .05
;i7  99.11     1.5  550  135  .03
;i7  99.52     .75  585  75   .01
;i7  99.83     1.5  2000 100  .03
;i7  100.24    .5   235  3500 .006
;i7  100.55    .5   1200 135  .004
;i7  100.66    .75  330  1435 .003
;i7  100.77    .5   155  1250 .002
;i7  100.88    5    1250 120  .001

;============================================
;
;    CASCADE HARMONICS
;
;=============================================
;instr    start   dur     freq    amp     offset
;p1  p2   p3   p4   p5   p6

i8   80   80   93   375  .03  ;.075


;============================================
;    S&H WATER INSTR
;============================================
;p1  p2   p3   p4   p5   p6
;i   strt dur  iseed     amp  krt
i9   120  40   .3   2.5  60



e

