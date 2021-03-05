 ;  ===========  Score for Risset's "Flute-like" Instrument   =========   ;
  ; Waveforms: Instrument 1

f1 0 2048 10 1					 ; fundamental
f2 0 2048 10 1 .2 .08 .07			 ; four harmonics
f3 0 2048 10 1 .4 .2 .1 .1 .05			 ; six harmonics

   ; Amplitude Envelope Functions: Instrument 1

f4 0 512 7 0 1 0 49 .2 90 .6 40 .99 25 .9 45 .5 50 .25 50 .12 50 .06 50 .02 62 0
f5 0 512 7 0 1 0 49 .2 100 .6 50 .99 150 .2 162 0
f6 0 512 7 0 1 0 49 .2 200 .5 100 .2 162 0
f7 0 512 7 0 1 0 79 .5 60 .5 20 .99 120 .4 140 .6 92 0

   ; Amplitude Envelope Fynctions: Instrument 2

f8 0 512 7 0 1 0 149 .4 200 .99 50 .5 50 .24 62 0

   ; Pitch Envelope Functions: Instrument 2

f9 0 512 7 0 1 .895 511 .99
f10 0 512 7 0 1 .99 511 .99

	; DC bias functions

f12 0 512 9 1 .26 0
f13 0 512 9 1 .3 0

; ================ "Flute-like" Score =============== ;

i2	 .88   .12	 1200	988   .12	8	10
i1	1	  2	  800  1109  2	   20	60	 5	 2	.24   12
i2	1	   .7	  300  1107   .7	8	10
i1	3	   .9	  300	784   .9   30	50	 4	 2	.24   13
i2	4.5    .15	 1200  1397   .2	4	10
i2	4.85   .15	 1200	992   .15	8	 9
i2	5.01   .7	  300  1100   .7	8	 9
i1	5.01  2 	 1200  1109  2	   30	80	 6	 2	.24   13
i1	7	   .2	  400	784   .2   40	70	 7	 2	.24   13
i1	7.2    .3	  300	698   .3   30	60	 5	 2	.24   13
i1	7.51  1 	  300	370  1	   30	50	 6	 3	.24   13
i2	7.5    .5	  150	368   .5	8	 9
i1	8.5    .5	  400	415   .5   50	60	 5	 3	.24   13
i1	9	   .12	  900  1396   .12  30	80	 4	 2	.24   13
i1	9.1   1.2	  900  1568  1.2   30	90	 4	 2	.24   13
i1	10.25 1 	  900	277  1.08  40	60	 7	 3	.31   13
i2	10.25 1 	  200	275  1 6   10
i1	11.35  .36	  500	329   .36  30	60	 5	 2	.28   13
i1	11.72  .36	  800	528   .36  30	60	 5	 2	.28   13
i2	12.09  .2	  950  2217   .2 6	9
i1	12.10  .15	  700  1975   .15  40	90	 5	 1	.28   13
i1	12.25 2.5	  999  2217  2.5   40	90	 4	 1	.28   13

s
f0  2
s

;   ============  Score for Risset's "Clarinet" Instrument   ==========   ;


f2	0 512 7 -1 200 -.5 112 .5 200 1

i3	 0.000	 0.750	  7.04	 20000
i3	 0.750	 0.250	  7.07	 20000
i3	 1.000	 1.000	  8.00	 20000
i3	 2.000	 0.200	  8.02	 20000
i3	 2.200	 0.200	  8.04	 20000
i3	 2.400	 0.200	  8.05	 20000
i3	 2.600	 0.200	  9.00	 20000
i3	 2.800	 0.200	  9.04	 20000
i3	 3.000	 0.250	  9.05	 20000
i3	 3.250	 0.250	  9.00	 20000
i3	 3.500	 0.250	  8.05	 20000
i3	 3.750	 0.250	  8.00	 20000
i3	 4.000	 1.000	  7.04	 20000
i3	 5.000	 0.125	  7.07	 20000
i3	 5.125	 0.125	  8.00	 20000
i3	 5.250	 0.125	  8.02	 20000
i3	 5.375	 0.125	  8.04	 20000
i3	 5.500	 0.125	  8.05	 20000
i3	 5.625	 0.125	  9.00	 20000
i3	 5.750	 0.125	  9.04	 20000
i3	 5.875	 0.125	  9.05	 20000

s
f0  2
s

;   ============  Score for Risset's "Waveshaping" Instrument  ========   ;

f2 0 512 7 0 16 .2 16 .38 16 .54 16 .68 16 .8 16 .9 16 .98 8 1 2 1 6 .96 64 .8313 32 .5704 80 .164 48 .0521 44 .0159 20 .0092 64 .005 32 0

  i4 0.000 0.750 6.00 20000
  i4 0.750 0.250 6.05 20000
  i4 1.000 1.000 7.00 20000
  i4 2.000 0.200 7.05 20000
  i4 2.200 0.200 8.00 20000
  i4 2.400 0.200 8.05 20000
  i4 2.600 0.200 9.00 20000
  i4 2.800 0.200 8.07 20000
  i4 3.000 2.000 8.00 20000
  i4 5.000 0.250 7.07 20000
  i4 5.250 0.250 7.00 20000
  i4 5.500 0.250 6.07 20000
  i4 5.750 0.250 6.00 20000

s
f0  2
s

;    ============= Score for Risset's "Arpeggio" Instrument ===========   ;

;   This instrument produces an arpeggiation in the harmonic series.	  ;
;   One can very clearly hear the individual harmonics come into phase.   ;
;   The phenomenon of beating is the means for doing this.		  ;


f2 0 1024 10 1 0 0 0 .7 .7 .7 .7 .7 .7

;       start   dur     freq    amp     offset

i8	1	10	96	2500	.03
i8	+	 .	48	2500	  .
i8	+	 .     192	2500	  .
e
