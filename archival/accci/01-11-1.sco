; **********************************************************************
; ACCCI:     01-11-1.SCO
; coded:     jpg 10/93

; **********************************************************************
; GEN functions
; waveform
f1  0 2048  10    1     .4    .2    .1    .1    .05 ; six harmonics

; envelope
f31 0 512   7     0     1     0     49    .8    100   .9    50    .7    150   .2    162   0 


; **********************************************************************
; score                                   LFO     RAND
; instr 1  idur     iamp ifq1  if1  if2   ifq3    iperc  ifqr
i1  1  1.5    8000   1109   1      31     4      1      40   
i1  3  .      .      .      .      .      .      50     .   
i1  6  .      .      .      .      .      .      80     .   
i1  9  .      .      .      .      .      .      1      110  
i1  12 .      .      .      .      .      .      50     .   
i1  15 .      .      .      .      .      .      80     .   
e

