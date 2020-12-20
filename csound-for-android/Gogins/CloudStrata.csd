<CsoundSynthesizer>
<CsOptions>
-odac -d 
</CsOptions>
<CsInstruments>
sr = 48000
ksmps = 512
nchnls = 2

instr 1 ; Bergeman 1
; INITIALIZATION
; Original pfields
; p1  p2 p3   p4  p5      p6 p7    p8       p9
; ins  st  dur  db func   at  dec freq1  freq2
ijunk7 = p7
iattack	=	0.02
isustain	=	p3
irelease	=	0.05
p3	=	iattack + isustain + irelease
kdamping linseg 	0.0, iattack, 1.0, isustain, 1.0, irelease, 0.0
ip4 	= 	p5
iamp	=	(ip4 + 36) - (p4 * 4)
; Constant-power pan.
; x location ranges from hard left = -1 through center = 0 to hard right = 1.
; angle of pan ranges from hard left = - pi / 2 through center = 0 to hard right = pi / 2.
ix 		=	p6
iangle		=	ix * 3.14159265359 / 2.0
ileftpan	=	sqrt(2.0) / 2.0 * (cos(iangle) + sin(iangle))
irightpan	=	sqrt(2.0) / 2.0 * (cos(iangle) - sin(iangle))
; ileftpan 	= 	(0.5 - p6) / 2.0
; irightpan 	= 	(0.5 + p6) / 2.0
ip5 	= 	77
ip3	=	p3
ip6 	= 	p3 * .25
ip7 	= 	p3 * .75
ip8 	= 	cpsoct(p4 - .01)
ip9 	= 	cpsoct(p4 + .01)
idb	=	ampdb(iamp)
isc	=	idb * .333
; KONTROL
k1 	line 	40, p3, 800
k2 	line 	440, p3, 220
k3 	linen 	isc, ip6, p3, ip7
k4 	line 	800, ip3,40
k5 	line 	220, ip3,440
k6 	linen 	isc, ip6, ip3, ip7
k7	linen	1, ip6, ip3, ip7
; AUDIO
a5 	oscili 	k3, ip8, ip5
a6 	oscili 	k3, ip8 * .999, ip5
a7 	oscili 	k3, ip8 * 1.001, ip5
a1	=	a5 + a6 + a7
a8 	oscili 	k6, ip9, ip5
a9 	oscili 	k6, ip9 * .999, ip5
a10 	oscili 	k6, ip9 * 1.001, ip5
a11	=	a8 + a9 + a10
a2 	butterbp 	a1, k1, 40
a3 	butterbp 	a2, k5, k2 * .8
a4 	balance 	a3, a1
a12 	butterbp 	a11, k4, 40
a13 	butterbp 	a12, k2, k5 * .8
a14 	balance 	a13, a11
a15	reverb2 	a4, 5, .3
a16	reverb2	a4, 4, .2
a17	=	(a15 + a4) * ileftpan * k7
a18	=	(a16 + a4) * irightpan * k7
	outs 	a17 * kdamping, a18 * kdamping
endin

instr 2 ; Bergeman 1
; INITIALIZATION
; Original pfields
; p1  p2 p3   p4  p5      p6 p7    p8       p9
ijunk7 = p7
; ins  st  dur  db func   at  dec freq1  freq2
iattack	=	0.03
isustain	=	p3
irelease	=	0.052
p3	=	iattack + isustain + irelease
kdamping linseg 	0.0, iattack, 1.0, isustain, 1.0, irelease, 0.0
ip4 	= 	p5
iamp	=	(ip4 + 36) - (p4 * 4)
; Constant-power pan.
; x location ranges from hard left = -1 through center = 0 to hard right = 1.
; angle of pan ranges from hard left = - pi / 2 through center = 0 to hard right = pi / 2.
ix 		=	p6
iangle		=	ix * 3.14159265359 / 2.0
ileftpan	=	sqrt(2.0) / 2.0 * (cos(iangle) + sin(iangle))
irightpan	=	sqrt(2.0) / 2.0 * (cos(iangle) - sin(iangle))
; ileftpan 	= 	(0.5 - p6) / 2.0
; irightpan 	= 	(0.5 + p6) / 2.0
ip5 	= 	77
ip3	=	p3
ip6 	= 	p3 * .25
ip7 	= 	p3 * .75
ip8 	= 	cpsoct(p4 - .01)
ip9 	= 	cpsoct(p4 + .01)
idb	=	ampdb(iamp)
isc	=	idb * .333
; KONTROL
k1 	line 	40, p3, 800
k2 	line 	440, p3, 220
k3 	linen 	isc, ip6, p3, ip7
k4 	line 	800, ip3,40
k5 	line 	220, ip3,440
k6 	linen 	isc, ip6, ip3, ip7
k7	linen	1, ip6, ip3, ip7
; AUDIO
a5 	oscili 	k3, ip8, ip5
a6 	oscili 	k3, ip8 * .999, ip5
a7 	oscili 	k3, ip8 * 1.001, ip5
a1	=	a5 + a6 + a7
a8 	oscili 	k6, ip9, ip5
a9 	oscili 	k6, ip9 * .999, ip5
a10 	oscili 	k6, ip9 * 1.001, ip5
a11	=	a8 + a9 + a10
a2 	butterbp 	a1, k1, 40
a3 	butterbp 	a2, k5, k2 * .8
a4 	balance 	a3, a1
a12 	butterbp 	a11, k4, 40
a13 	butterbp 	a12, k2, k5 * .8
a14 	balance 	a13, a11
a15	reverb2 	a4, 5, .3
a16	reverb2	a4, 4, .2
a17	=	(a15 + a4) * ileftpan * k7
a18	=	(a16 + a4) * irightpan * k7
	outs 	a17 * kdamping, a18 * kdamping
endin







</CsInstruments>
<CsScore>
f   1  0 4096 10 1 ; Sine wave.
f   2  0 4096 10 1 .2 .08 .07 ; Flute-like.
f   3  0 4096 10 1 .4 .2 .1 .1 .05
f   4  0 512 7 0 1 0 49 .2 90 .6 40 .99 25 .9 45 .5 50 .25 50 .12 50 .06 50 .02 62 0
f   5  0 512 7 0 1 0 49 .2 100 .6 50 .99 150 .2 162 0
f   6  0 512 7 0 1 0 49 .2 200 .5 100 .2 162 0
f   7  0 512 7 0 1 0 79 .5 60 .5 20 .99 120 .4 140 .6 92 0
f   8 .0 513 5 .001 513 1 ; Exponential rise.
f  12  0 512 9 1 .26 0
f  13  0 512 9 1 .3 0
f  23  0 512 9 1 1 0
f  24  0 512 -7 3000 71 3000 168 2300 100 2100 71 2000 102 2000
f  25  0 512 -7 .025 71 .02 102 .025 71 .05 268 .06
f  26  0 512 -7 .25 71 .25 102 .08 .05 339 .05
f  27  0 512 -7 5 71 2.3 102 1.5 237 2.5 102 2.3
f  28  0 512 -7 5 512 6.5
f  30  0 8192 10 1
f  31  0 2048 19 .5 1 270 1
f  32  0 512 -7 -1 150 .1 110 0 252 0
f  33  0 1024 10 .3 0 0 0 .1 .1 .1 .1 .1 .1
f  34  0  8192  9  1 1 90 ; Cosine for Fitch instruments.
f  41  0 8193 10 1  ; Sine wave.
f  42  0 8193 11 1  ; Cosine wave.
f  43  0 8192 -12 20.0  ; Unscaled ln(I(x)) from 0 to 20.0.
f  44  0 4097 10 1 .25 .1 ; Kelley flute.
f  45  0 2049 7 -1 1800 1 249 -1 ; Kelley string.
f  46  0 2049 7 -1 1024 1 1024 -1 ; Kelley harpsichord.
f  47  0 2049 10 1 0 1 0 1 ; Kelley oboe.
f  48  0  10 3 1 0 .25 .3 .76 ; Nelson Chebyshev.
f  49  0  13 1 1 .9 .8 .7 .6 .5 .4 .3 .2 .1 ; Nelson table lookup.
f  50  0 8193 20 2 1 ; Hanning window.
f  51  0 8193 -10  809 14581 2030 990 522 1545 2030 262 61 45 45 64 465  139 19 75 29 42 39 96 86 75 39 45 ; Horner Erhu
f  52  0 8193 -10 1567 910 870  3119 595 151 45  111 123 31 41 127  148 196 124 142 49 22 22 59 74 37 ; Horner Erhu
f  53  0 8193 -10 2411 1158 352 922 854 70 66 152 83 15 69 69 92 91 60 30  42 78 38 41 59 22 ; Horner Erhu
f  54  0 8193 -10 18607 805 771 832 115 166 115 21 66 22 135 165 18 41 85  27 93 23 8 15 23 7 ; Horner Erhu
f  55  0 8193 7  0 819 1.1 819 1.2 820 1.4 819 1.2 819 1.15 820 0 8200 0 ; Horner Erhu
f  61  0 8193 -10  30 37 282 99 29 327 96 77 102 11 45 7 4 3 1 1; Horner Pipa
f  62  0 8193 -10  324 300 144 160 383 847 1311 1121 885 586 125 174 269  100 428 190 563 294 178 236 169 173 75 57 52 57 131 43 134 77 54 51  60 107 51 274 54 30 23 66 20 12 ; Horner Pipa
f  63  0 8193 -10  79 51 133 10 21 20 7 3 11 4 3 2 1 2 1 2 ; Horner Pipa
f  64  0 8193 -10  475 207 545 323 104 1890 1304 1031 350 269 245 180  200 43 45 14 13 8 13 34 16 28 16 3 3 ; Horner Pipa
f  65  0 8193 -10  8 24 10 14 35 30 19 31 16 16 11 6 2 7 8 9 13 11 3 2 3  1 4 2 2 2 1 2 2 1 3 3 1 4 2 3 1; Horner Pipa
f  66  0  13 1 1 .9 .8 .7 .6 .5 .4 .3 .2 .1 ;gen 13 table lookup (was 31)
f  67  0  13 1 1 .9 .8 .7 .6 .7 .8 .9 1 ;gen 13 table lookup (was 32)
f  68  0 8193  20 7 1 2 ; Semi-rectangular Kaiser window.
f  69  0 16384 9 .5 1 0 ; Half-sine window.
f  77  0 4096 10 .28 1 .74 .66 .78 .48 .05 .33 .12 .08 .01 .54 .19 .08 .05 .16 .01 .11 .3 .02 .2 ; Bergeman f1
f  100  0 2048 -17 0 101 575 102 625 103 675 104 725 105 775 106 825 107 875 108 925 109 975 110 1025 111  1075 112 1125  113 1175  114 ; Steinway octave : tablenumber
f  101  0 2048 -17 0 5.5  575      6 625  6.5 675      7 725  7.5 775      8 825  8.5  875     9 925  9.5833333333333  975   10 1025 10.5 1075   11 1125 11.5 1175     12 ; Steinway octave : baseoctave
;f  102  0  0 1 "Steinway102.aif" 0 4 0 ;  5.50
;f  103  0  0 1 "Steinway103.aif" 0 4 0 ;  6.00
;f  104  0  0 1 "Steinway104.aif" 0 4 0 ;  6.50
;f  105  0  0 1 "Steinway105.aif" 0 4 0 ;  7.00
;f  106  0  0 1 "Steinway106.aif" 0 4 0 ;  7.50
;f  107  0  0 1 "Steinway107.aif" 0 4 0 ;  8.00
;f  108  0  0 1 "Steinway108.aif" 0 4 0 ;  8.50
;f  109  0  0 1 "Steinway109.aif" 0 4 0 ;  9.00
;f  110  0  0 1 "Steinway110.aif" 0 4 0 ;  9.50
;f  111  0  0 1 "Steinway111.aif" 0 4 0 ; 10.00
;f  112  0  0 1 "Steinway112.aif" 0 4 0 ; 10.50
;f  113  0  0 1 "Steinway113.aif" 0 4 0 ; 11.00
;f  114  0  0 1 "Steinway114.aif" 0 4 0 ; 11.50
;f  115  0  0 1 "Steinway115.aif" 0 4 0 ; 12.00
f  121  0  4096 10 1
f  122  0  4096 10 .45 .31 .38 .9 .32 .28 0 0 .2 .18 0 0 0 0 .2 .3 .4 .24 .24 .24 .3
f  123  0  4096 10 .86 .9 .32 .2 0 0 0 0 0 0 0 0 0 .3 .5
f  124  0  4096 10 .34 .9 .88 .32 0 .32 0 .32 0 .22 .29 0 .29 0 .29 0 .52 0 .34 0 .49 0 .52
f  125  0  4096 10 .52 0 .86 0 .2 .156 0 .156 0 0 .156 0 .156 0 .28 0 .48 0 .4 0 .7 0 .22
f  126  0  4096 10 .3 .3 .44 .34 .56 .3 .06 .03
f  127  0  4096 10 .28 1 .74 .66 .78 .48 .05 .33 .12 .08 .01 .54 .19 .08 .05 .16 .01 .11 .3 .02 .2
f  128  0  4096 10 .6 .4 1 .22 .09 .24 .02 .06 .05
f  129  0  4096 10 1 .41 .95 .45 .18 0 .05
f  130  0  4096 10 1 1 .1 .2 .156 .02 .02 .02
f  131  0  4096 10 1 0 .5 .1 .6 .3 .5 .3 .1 .01
f  132  0  4096 10 1 .7 .12 .5 .08 0 0 .02 .05 0 0 .03
f  133  0  4096 10 .9 1 .2 .1 .3 .1 0 0 .05
f  134  0  4096 10 .3 .1 .6 .15
f  135  0  4096 10 1 0 0 0 0 0 1 0 0 0 1 0
f  136  0  512 7 0   128 1 128 .7 128 .7 128  0
f  137  0  512 5 .01 128 1 128 .7 128 .7 128 .01
f  138  0  512 7 1   128 .8 128  .6 128  .4  64  .2 64 0
f  139  0  512 5 1   128 .8 128  .4  64  .6  32  .2 32 .4 64 .2 64 .01
f  140  0  512 7 0 128 1 128 .7 128 .5 128 0
f  141  0  512 7 0  64 1 128 .8 64 .6 128 .4 128 0
f  142  0  512 7 0   128 .5 128 1 128 .7 128 0
f  143  0  9 -2 110 146.6 165  293 330 440 586.4 660 880
f  144  0  17 -2 27.5  41.25 55 73.3 82.5 110 146.6 165 220 293 330 440 586.4 660 880 1172.8 1320
f  145  0   8 -2 220 293 330 440 586.4 660 1172.8 1320
f  146  0   5 -2 27.5 36.65 41.25 55 73.3 82.5

i  1.000000000 299.969000000 13.000000000 5.083333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 287.949000000 13.000000000 5.583333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 287.949000000 13.000000000 5.583333333 66.000000000 1.250000000 1.000000000
i  1.000000000 281.022000000 13.000000000 5.000000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 262.992000000 13.000000000 5.750000000 66.000000000 1.250000000 1.000000000
i  1.000000000 294.210000000 13.000000000 5.750000000 66.000000000 1.250000000 1.000000000
i  1.000000000 276.430000000 13.000000000 6.916666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 269.503000000 13.000000000 6.333333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 269.503000000 13.000000000 6.333333333 66.000000000 1.250000000 1.000000000
i  1.000000000 289.525000000 13.000000000 6.500000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 279.135000000 13.000000000 5.666666667 66.000000000 1.250000000 1.000000000
i  1.000000000 261.104000000 13.000000000 6.416666667 66.000000000 1.250000000 1.000000000
i  1.000000000 286.562000000 13.000000000 7.083333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 274.542000000 13.000000000 7.583333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 274.542000000 13.000000000 7.583333333 66.000000000 1.250000000 1.000000000
i  1.000000000 267.615000000 13.000000000 7.000000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 249.585000000 13.000000000 7.750000000 66.000000000 1.250000000 1.000000000
i  1.000000000 280.803000000 13.000000000 7.750000000 66.000000000 1.250000000 1.000000000
i  1.000000000 300.000000000 13.000000000 8.250000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 287.980000000 13.000000000 8.750000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 287.980000000 13.000000000 8.750000000 66.000000000 1.250000000 1.000000000
i  1.000000000 281.053000000 13.000000000 8.166666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 263.022000000 13.000000000 8.916666667 66.000000000 1.250000000 1.000000000
i  1.000000000 263.022000000 13.000000000 8.916666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 263.022000000 13.000000000 8.916666667 66.000000000 1.250000000 1.000000000
i  1.000000000 256.096000000 13.000000000 8.333333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 265.728000000 13.000000000 7.583333333 66.000000000 1.250000000 1.000000000
i  1.000000000 265.728000000 13.000000000 7.583333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 247.697000000 13.000000000 8.333333333 66.000000000 1.250000000 1.000000000
i  1.000000000 247.697000000 13.000000000 8.333333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 247.697000000 13.000000000 8.333333333 66.000000000 1.250000000 1.000000000
i  1.000000000 240.770000000 13.000000000 7.833333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 222.740000000 13.000000000 8.500000000 66.000000000 1.250000000 1.000000000
i  1.000000000 222.740000000 13.000000000 8.500000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 222.740000000 13.000000000 8.500000000 66.000000000 1.250000000 1.000000000
i  1.000000000 225.445000000 13.000000000 7.250000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 245.466000000 13.000000000 7.416666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 245.466000000 13.000000000 7.416666667 66.000000000 1.250000000 1.000000000
i  1.000000000 229.265000000 13.000000000 7.833333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 259.298000000 13.000000000 8.083333333 66.000000000 1.250000000 1.000000000
i  1.000000000 248.908000000 13.000000000 7.166666667 66.000000000 1.250000000 1.000000000
i  1.000000000 258.539000000 13.000000000 6.500000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 240.509000000 13.000000000 7.250000000 66.000000000 1.250000000 1.000000000
i  1.000000000 240.509000000 13.000000000 7.250000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 240.509000000 13.000000000 7.250000000 66.000000000 1.250000000 1.000000000
i  1.000000000 233.582000000 13.000000000 6.666666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 215.552000000 13.000000000 7.416666667 66.000000000 1.250000000 1.000000000
i  1.000000000 215.552000000 13.000000000 7.416666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 215.552000000 13.000000000 7.416666667 66.000000000 1.250000000 1.000000000
i  1.000000000 208.625000000 13.000000000 6.833333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 218.257000000 13.000000000 6.166666667 66.000000000 1.250000000 1.000000000
i  1.000000000 218.257000000 13.000000000 6.166666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 200.226000000 13.000000000 6.916666667 66.000000000 1.250000000 1.000000000
i  1.000000000 200.226000000 13.000000000 6.916666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 200.226000000 13.000000000 6.916666667 66.000000000 1.250000000 1.000000000
i  1.000000000 193.300000000 13.000000000 6.333333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 175.269000000 13.000000000 7.083333333 66.000000000 1.250000000 1.000000000
i  1.000000000 206.487000000 13.000000000 7.083333333 66.000000000 1.250000000 1.000000000
i  1.000000000 225.684000000 13.000000000 7.583333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 213.664000000 13.000000000 8.083333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 213.664000000 13.000000000 8.083333333 66.000000000 1.250000000 1.000000000
i  1.000000000 206.737000000 13.000000000 7.500000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 188.707000000 13.000000000 8.250000000 66.000000000 1.250000000 1.000000000
i  1.000000000 219.925000000 13.000000000 8.250000000 66.000000000 1.250000000 1.000000000
i  1.000000000 202.144000000 13.000000000 9.416666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 195.218000000 13.000000000 8.833333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 195.218000000 13.000000000 8.833333333 66.000000000 1.250000000 1.000000000
i  1.000000000 215.239000000 13.000000000 9.000000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 204.850000000 13.000000000 8.166666667 66.000000000 1.250000000 1.000000000
i  1.000000000 186.819000000 13.000000000 8.916666667 66.000000000 1.250000000 1.000000000
i  1.000000000 212.277000000 13.000000000 9.583333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 200.257000000 13.000000000 10.083333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 200.257000000 13.000000000 10.083333333 66.000000000 1.250000000 1.000000000
i  1.000000000 193.330000000 13.000000000 9.500000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 175.300000000 13.000000000 10.250000000 66.000000000 1.250000000 1.000000000
i  1.000000000 206.517000000 13.000000000 10.250000000 66.000000000 1.250000000 1.000000000
i  1.000000000 188.737000000 13.000000000 11.416666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 181.811000000 13.000000000 10.833333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 181.811000000 13.000000000 10.833333333 66.000000000 1.250000000 1.000000000
i  1.000000000 201.832000000 13.000000000 11.000000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 191.442000000 13.000000000 10.083333333 66.000000000 1.250000000 1.000000000
i  1.000000000 173.412000000 13.000000000 10.833333333 66.000000000 1.250000000 1.000000000
i  1.000000000 151.160000000 13.000000000 9.750000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 171.181000000 13.000000000 9.916666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 171.181000000 13.000000000 9.916666667 66.000000000 1.250000000 1.000000000
i  1.000000000 154.980000000 13.000000000 10.333333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 185.013000000 13.000000000 10.583333333 66.000000000 1.250000000 1.000000000
i  1.000000000 174.623000000 13.000000000 9.666666667 66.000000000 1.250000000 1.000000000
i  1.000000000 141.267000000 13.000000000 9.916666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 134.340000000 13.000000000 9.333333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 134.340000000 13.000000000 9.333333333 66.000000000 1.250000000 1.000000000
i  1.000000000 154.362000000 13.000000000 9.500000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 143.972000000 13.000000000 8.666666667 66.000000000 1.250000000 1.000000000
i  1.000000000 125.941000000 13.000000000 9.416666667 66.000000000 1.250000000 1.000000000
i  1.000000000 100.984000000 13.000000000 9.583333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 94.057200000 13.000000000 9.000000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 94.057200000 13.000000000 9.000000000 66.000000000 1.250000000 1.000000000
i  1.000000000 114.079000000 13.000000000 9.166666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 103.689000000 13.000000000 8.333333333 66.000000000 1.250000000 1.000000000
i  1.000000000 103.689000000 13.000000000 8.333333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 103.689000000 13.000000000 8.333333333 66.000000000 1.250000000 1.000000000
i  1.000000000 123.711000000 13.000000000 8.500000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 137.542000000 13.000000000 9.083333333 66.000000000 1.250000000 1.000000000
i  1.000000000 137.542000000 13.000000000 9.083333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 127.152000000 13.000000000 8.250000000 66.000000000 1.250000000 1.000000000
i  1.000000000 127.152000000 13.000000000 8.250000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 127.152000000 13.000000000 8.250000000 66.000000000 1.250000000 1.000000000
i  1.000000000 147.173000000 13.000000000 8.416666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 136.784000000 13.000000000 7.583333333 66.000000000 1.250000000 1.000000000
i  1.000000000 136.784000000 13.000000000 7.583333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 136.784000000 13.000000000 7.583333333 66.000000000 1.250000000 1.000000000
i  1.000000000 170.636000000 13.000000000 8.333333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 154.435000000 13.000000000 8.750000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 154.435000000 13.000000000 8.750000000 66.000000000 1.250000000 1.000000000
i  1.000000000 153.128000000 13.000000000 8.083333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 128.826000000 13.000000000 8.666666667 66.000000000 1.250000000 1.000000000
i  1.000000000 158.859000000 13.000000000 8.916666667 66.000000000 1.250000000 1.000000000
i  1.000000000 172.690000000 13.000000000 9.583333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 162.300000000 13.000000000 8.750000000 66.000000000 1.250000000 1.000000000
i  1.000000000 162.300000000 13.000000000 8.750000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 162.300000000 13.000000000 8.750000000 66.000000000 1.250000000 1.000000000
i  1.000000000 182.322000000 13.000000000 8.916666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 171.932000000 13.000000000 8.000000000 66.000000000 1.250000000 1.000000000
i  1.000000000 171.932000000 13.000000000 8.000000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 171.932000000 13.000000000 8.000000000 66.000000000 1.250000000 1.000000000
i  1.000000000 191.953000000 13.000000000 8.166666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 205.785000000 13.000000000 8.833333333 66.000000000 1.250000000 1.000000000
i  1.000000000 205.785000000 13.000000000 8.833333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 195.395000000 13.000000000 7.916666667 66.000000000 1.250000000 1.000000000
i  1.000000000 195.395000000 13.000000000 7.916666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 195.395000000 13.000000000 7.916666667 66.000000000 1.250000000 1.000000000
i  1.000000000 215.416000000 13.000000000 8.083333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 205.026000000 13.000000000 7.250000000 66.000000000 1.250000000 1.000000000
i  1.000000000 186.996000000 13.000000000 8.000000000 66.000000000 1.250000000 1.000000000
i  1.000000000 162.039000000 13.000000000 8.166666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 155.112000000 13.000000000 7.583333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 155.112000000 13.000000000 7.583333333 66.000000000 1.250000000 1.000000000
i  1.000000000 175.134000000 13.000000000 7.750000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 164.744000000 13.000000000 6.916666667 66.000000000 1.250000000 1.000000000
i  1.000000000 146.713000000 13.000000000 7.666666667 66.000000000 1.250000000 1.000000000
i  1.000000000 124.461000000 13.000000000 6.583333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 144.483000000 13.000000000 6.750000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 144.483000000 13.000000000 6.750000000 66.000000000 1.250000000 1.000000000
i  1.000000000 128.281000000 13.000000000 7.083333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 158.314000000 13.000000000 7.333333333 66.000000000 1.250000000 1.000000000
i  1.000000000 147.924000000 13.000000000 6.500000000 66.000000000 1.250000000 1.000000000
i  1.000000000 114.568000000 13.000000000 6.666666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 107.641000000 13.000000000 6.166666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 107.641000000 13.000000000 6.166666667 66.000000000 1.250000000 1.000000000
i  1.000000000 127.663000000 13.000000000 6.333333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 117.273000000 13.000000000 5.416666667 66.000000000 1.250000000 1.000000000
i  1.000000000 99.242300000 13.000000000 6.166666667 66.000000000 1.250000000 1.000000000
i  1.000000000 124.700000000 13.000000000 6.833333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 112.680000000 13.000000000 7.333333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 112.680000000 13.000000000 7.333333333 66.000000000 1.250000000 1.000000000
i  1.000000000 105.753000000 13.000000000 6.750000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 87.722900000 13.000000000 7.500000000 66.000000000 1.250000000 1.000000000
i  1.000000000 118.941000000 13.000000000 7.500000000 66.000000000 1.250000000 1.000000000
i  1.000000000 101.161000000 13.000000000 8.666666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 94.234000000 13.000000000 8.083333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 94.234000000 13.000000000 8.083333333 66.000000000 1.250000000 1.000000000
i  1.000000000 114.256000000 13.000000000 8.250000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 103.866000000 13.000000000 7.416666667 66.000000000 1.250000000 1.000000000
i  1.000000000 85.835100000 13.000000000 8.166666667 66.000000000 1.250000000 1.000000000
i  1.000000000 111.293000000 13.000000000 8.833333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 99.272900000 13.000000000 9.333333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 99.272900000 13.000000000 9.333333333 66.000000000 1.250000000 1.000000000
i  1.000000000 92.346300000 13.000000000 8.750000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 74.315700000 13.000000000 9.500000000 66.000000000 1.250000000 1.000000000
i  1.000000000 105.534000000 13.000000000 9.500000000 66.000000000 1.250000000 1.000000000
i  1.000000000 124.731000000 13.000000000 10.000000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 112.711000000 13.000000000 10.500000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 112.711000000 13.000000000 10.500000000 66.000000000 1.250000000 1.000000000
i  1.000000000 105.784000000 13.000000000 9.916666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 87.753400000 13.000000000 10.666666667 66.000000000 1.250000000 1.000000000
i  1.000000000 87.753400000 13.000000000 10.666666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 87.753400000 13.000000000 10.666666667 66.000000000 1.250000000 1.000000000
i  1.000000000 80.826800000 13.000000000 10.083333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 90.458600000 13.000000000 9.416666667 66.000000000 1.250000000 1.000000000
i  1.000000000 90.458600000 13.000000000 9.416666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 72.428000000 13.000000000 10.166666667 66.000000000 1.250000000 1.000000000
i  1.000000000 72.428000000 13.000000000 10.166666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 72.428000000 13.000000000 10.166666667 66.000000000 1.250000000 1.000000000
i  1.000000000 65.501400000 13.000000000 9.583333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 47.470800000 13.000000000 10.333333333 66.000000000 1.250000000 1.000000000
i  1.000000000 47.470800000 13.000000000 10.333333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 47.470800000 13.000000000 10.333333333 66.000000000 1.250000000 1.000000000
i  1.000000000 50.175900000 13.000000000 9.083333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 70.197500000 13.000000000 9.250000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 70.197500000 13.000000000 9.250000000 66.000000000 1.250000000 1.000000000
i  1.000000000 53.996200000 13.000000000 9.583333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 84.028700000 13.000000000 9.833333333 66.000000000 1.250000000 1.000000000
i  1.000000000 73.638800000 13.000000000 9.000000000 66.000000000 1.250000000 1.000000000
i  1.000000000 83.270500000 13.000000000 8.250000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 65.239900000 13.000000000 9.000000000 66.000000000 1.250000000 1.000000000
i  1.000000000 65.239900000 13.000000000 9.000000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 65.239900000 13.000000000 9.000000000 66.000000000 1.250000000 1.000000000
i  1.000000000 58.313300000 13.000000000 8.500000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 40.282700000 13.000000000 9.166666667 66.000000000 1.250000000 1.000000000
i  1.000000000 40.282700000 13.000000000 9.166666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 40.282700000 13.000000000 9.166666667 66.000000000 1.250000000 1.000000000
i  1.000000000 33.356100000 13.000000000 8.666666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 42.987800000 13.000000000 7.916666667 66.000000000 1.250000000 1.000000000
i  1.000000000 42.987800000 13.000000000 7.916666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 24.957200000 13.000000000 8.666666667 66.000000000 1.250000000 1.000000000
i  1.000000000 24.957200000 13.000000000 8.666666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 24.957200000 13.000000000 8.666666667 66.000000000 1.250000000 1.000000000
i  1.000000000 18.030600000 13.000000000 8.083333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 0.000000000 13.000000000 8.833333333 66.000000000 1.250000000 1.000000000
i  1.000000000 31.217900000 13.000000000 8.833333333 66.000000000 1.250000000 1.000000000
i  1.000000000 50.415300000 13.000000000 9.333333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 38.395000000 13.000000000 9.833333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 38.395000000 13.000000000 9.833333333 66.000000000 1.250000000 1.000000000
i  1.000000000 31.468300000 13.000000000 9.250000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 13.437800000 13.000000000 10.000000000 66.000000000 1.250000000 1.000000000
i  1.000000000 44.655600000 13.000000000 10.000000000 66.000000000 1.250000000 1.000000000
i  1.000000000 26.875500000 13.000000000 11.166666667 66.000000000 -0.250000000 1.000000000
i  1.000000000 19.948900000 13.000000000 10.583333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 19.948900000 13.000000000 10.583333333 66.000000000 1.250000000 1.000000000
i  1.000000000 39.970500000 13.000000000 10.750000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 29.580600000 13.000000000 9.916666667 66.000000000 1.250000000 1.000000000
i  1.000000000 11.550000000 13.000000000 10.666666667 66.000000000 1.250000000 1.000000000
i  1.000000000 37.008200000 13.000000000 11.333333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 24.987800000 13.000000000 11.833333333 66.000000000 -0.250000000 1.000000000
i  1.000000000 24.987800000 13.000000000 11.833333333 66.000000000 1.250000000 1.000000000
i  1.000000000 18.061200000 13.000000000 11.250000000 66.000000000 -0.250000000 1.000000000
i  1.000000000 0.030575500 13.000000000 12.000000000 66.000000000 1.250000000 1.000000000
i  1.000000000 31.248400000 13.000000000 12.000000000 66.000000000 1.250000000 1.000000000



</CsScore>
</CsoundSynthesizer>
