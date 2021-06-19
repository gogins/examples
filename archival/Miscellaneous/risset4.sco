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



;   ============  Score for Risset's "Ring-mod" Instrument   ==========   ;


f2 0 512 7 0 43 1 171 1 84 -1 171 -1 43 0

i5	0.000 0.150  424 20000 1000 0.010
i5	0.150 0.300  727 20000 1000 0.010
i5	0.450 0.300 1524 20000 2000 0.010
i5	0.750 0.600 1136 20000 2000 0.010
i5	1.350 0.600 1342 20000 2000 0.010
i5	1.950 3.600  424 20000 1000 2.300
i5	5.550 0.150  727 20000 1000 0.010
i5	5.700 0.300 1524 20000 2000 0.010
i5	6.000 0.300 1136 20000 2000 0.010
i5	6.300 0.600 1342 20000 2000 0.010
i5	6.900 0.600  424 20000 1000 0.010
i5	7.500 3.600  727 20000 1000 2.300
i5     11.100 0.150 1524 20000 2000 0.010
i5     11.250 0.300 1136 20000 2000 0.010
i5     11.550 0.300 1342 20000 2000 0.010
i5     11.850 0.600  424 20000 1000 0.010
i5     12.450 0.600  727 20000 1000 0.010
i5     13.050 3.600 1524 20000 2000 2.300
i5     16.650 0.150 1136 20000 2000 0.010
i5     16.800 0.300 1342 20000 2000 0.010

s
f0   2
s

;    ==========  Score for Risset's "Glissando" Instrument  ===========   ;

; Generate 30 seconds of endless glissando with a 120 second cycle time   ;
;									  ;
; Note: f2 must read soundin.6 a bell-shaped function defined by the	  ;
; following expression from Dodge:exp(-4.8283*(1-cos(2*pi*(x- 255.5)/511)));


f2	   0	   2049       1 	 6	0     6		;readin floats
f3	   0	    513       5 	 1    512     .0009766

f0	   1
f0	   2
f0	   3
f0	   5
f0	   8
f0	  11
f0	  14
f0	  17
f0	  20
f0	  23
f0	  26
f0	  29

i9	   0		 30	15000	6000	120
e
