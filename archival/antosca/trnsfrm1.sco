; TRANSFORM1.SCO

f1  0 2048  10    1                     ; Sine
f2  0 2048  10    1     .5    .3    .25   .2    .167  .14   .125  .111 ; Sawtooth
f3  0 2048  10    1     0     .3    0     .2    0     .14   0     .111 ; Square
f4  0 2048  10    1     1     1     1     .7    .5    .3    .1 ; Pulse

;p1		p2		p3	  p4	p5	  p6	p7	  p8	p9		p10		p11		p12		p13
;-----------------------------------------------------------------------------------------
;instr	strt	dur	 amp   frq	 atk	rel	  vbrt	vbdp	vbdl	initwv	endwv	xfdtm
;-----------------------------------------------------------------------------------------
i1  0  10     60     8.07   .75    2      .5     6      .5     1      2      2    
i1  7  14     >      8.075  3      2.5    2      7      .75    2      3      1.5  
i1  18 11     67     8.07   3.5    1.5    4      10     .99    1      4      2.5  

;p1		p2		p3		p4
;------------------------------------------------------
;instr	strt	dur		rvbtm
;------------------------------------------------------
i99 0  10     12  
i99 7  14     16  
i99 18 11     14  
e
