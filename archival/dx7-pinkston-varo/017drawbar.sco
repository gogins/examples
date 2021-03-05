;============================================================================
; DRAWBAR - ALGORITHM #32
;============================================================================
; SIMPLE SINE FUNCTION
f01 0 4096  10    1  
; OPERATOR OUTPUT LEVEL TO AMP SCALE FUNCTION (DATA FROM CHOWNING/BRISTOW)
f02 0 128   7     0     10    .003  10    .013
      10    .031  10    .079  10    .188  10    .446
      5     .690  5     1.068 5     1.639 5     2.512
      5     3.894 5     6.029 5     9.263 4     13.119
      29    13.119
; RATE SCALING FUNCTION
f03 0 128   7     0     128   1 
; EG RATE RISE FUNCTION FOR LVL CHANGE BETWEEN 0 AND 99 (DATA FROM OPCODE)
f04 0 128   -7    38    5     22.8  5     12    5  
      7.5   5     4.8   5     2.7   5     1.8   5     1.3 
      8     .737  3     .615  3     .505  3     .409  3       
                        .321    6       .080    6       .055    2       .032    3       .024  
                        3       .018    3       .014    3       .011    3       .008    3       
                        .008    3       .007    3       .005    3       .003    32      .003 
; EG RATE RISE PERCENTAGE FUNCTION
f05 0 128   -7    .00001      31    .00001      4     .02   5 
                        .06     10      .14     10      .24     10      .35     10      .50  
                        10      .70     5       .86     4       1.0     29      1.0  
; EG RATE DECAY FUNCTION FOR LVL CHANGE BETWEEN 0 AND 99
f06 0 128   -7    318   4     181   5     115   5 
      63    5     39.7  5     20    5     11.2  5     7       
      8     5.66  3     3.98  6     1.99  3     1.34  3       
                        .99     3       .71     5       .41     3       .15     3       .081  
                        3       .068    3       .047    3       .037    3       .025    3  
                        .02     3       .013    3       .008    36      .008 
; EG RATE DECAY PERCENTAGE FUNCTION
f07 0 128   -7    .00001      10    .25   10    .35   10
                        .43     10      .52     10      .59     10      .70     10      .77  
                        10      .84     10      .92     9       1.0     29      1.0  
; EG LEVEL TO AMP FACTOR MAPPING FUNCTION (INDEX IN RADIANS = INDEX / 2PI)
;f08     0       128     6       .001    96      .5      32      1
;f08   0   128   -6    0   64   .0318   0   .0318   64   2.08795
f08 0 128   -7    0     10    .000477     10    .002
      10    .00493      10    .01257      10    .02992      10    .07098
      5     .10981      5     .16997      5     .260855     5     .39979
      5     .61974      5     .95954      5     1.47425     4     2.08795
      29    2.08795
; VELOCITY TO AMP FACTOR MAPPING FUNCTION (ROUGH GUESS)
f09 0 129   9     .25   1     0   
; VELOCITY SENSITIVITY SCALING FUNCTION
f10 0 8     -7    0     8     1   
; FEEDBACK SCALING FUNCTION
f11 0 8     -6    0     8     6            

; OPERATOR 1 PARAMETERS:    
f12 0 32    -2    
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        99      7       99      99      99      99      99      99      99      0    
;AMS      FIXED?   FREQ   DET    RSC
                        3       0       .5      -7      0    

; OPERATOR 2 PARAMETERS
f13 0 32    -2             
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        99      7       99      99      99      99      99      99      99      0    
;AMS      FIXED?   FREQ   DET    RSC
                        3       0       1       -7      0    

; OPERATOR 3 PARAMETERS
f14 0 32    -2 
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        99      7       99      99      99      99      99      99      99      0    
;AMS      FIXED?   FREQ   DET    RSC
                        3       0       3       0       0     

; OPERATOR 4 PARAMETERS
f15 0 32    -2         
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        99      7       99      99      99      99      99      99      99      0    
;AMS      FIXED?   FREQ   DET    RSC
                        3       0       4       0       0     

; OPERATOR 5 PARAMETERS
f16 0 32    -2 
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        99      7       99      99      99      99      99      99      99      0    
;AMS      FIXED?   FREQ   DET    RSC
                        3       0       8       0       0     

; OPERATOR 6 PARAMETERS
f17 0 32    -2 
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        99      7       99      99      99      99      99      99      99      0    
;AMS      FIXED?   FREQ   DET    RSC
                        3       0       12      0       0     

;====================================================================;
;                       Yamaha DX7 Algorithm 32                      ;
;                                                                    ;
;    p02 = start     p03 = dur       p04 = pch       p05 = vel       ;
;    p06 = panfac    p07 = vibdel    p08 = vibwth    p09 = vibhz     ;
;    p10 = op1fn     p11 = op2fn     p12 = op3fn     p13 = op4fn     ;
;    p14 = op5fn     p15 = op6fn     p16 = ampfn     p17 = pkamp     ;
;    p18 = rsfn      p19 = devfn     p20 = erisfn    p21 = edecfn    ;
;    p22 = vsfn      p23 = velfn     p24 = feedfn    p25 = feedbk    ;
;                    p26 = Algorithm Number (Disabled)               ;
;====================================================================;
t       0.000   72.000
i1.01  0.000  1.794  60     54     0      0      0      0    
       12     13     14     15     16     17     2      2000 
       3      8      4      6      10     9      11     0 ;32
i1.02  0.000  0.265  76     66  
i1.03  0.000  0.260  72     65  
i1.04  0.500  0.352  72     46  
i1.05  0.500  0.338  76     42  
i1.06  1.000  0.319  77     63  
i1.07  1.000  0.296  74     70  
i1.08  1.500  0.281  76     62  
i1.09  1.500  0.227  79     59  
i1.10  2.000  1.733  60     71  
i1.11  2.000  0.442  79     70  
i1.12  2.000  0.383  76     63  
i1.13  2.500  0.429  77     65  
i1.14  2.500  0.325  74     54  
i1.15  3.000  0.231  76     60  
i1.16  3.000  0.210  72     48  
i1.17  3.494  0.181  71     64  
i1.18  3.494  0.169  74     70  
i1.19  3.994  0.377  67     55  
i1.20  3.994  1.756  60     51  
i1.21  3.994  0.352  72     65  
i1.22  4.494  0.406  72     55  
i1.23  4.494  0.325  67     42  
i1.24  4.994  0.392  74     84  
i1.25  4.994  0.321  67     54  
i1.26  5.494  0.287  76     72  
i1.27  5.494  0.275  67     57  
i1.28  5.494  0.242  72     51  
i1.29  5.994  0.725  76     75  
i1.30  5.994  0.967  67     64  
i1.31  5.994  0.969  60     59  
i1.32  5.994  0.723  72     59  
i1.33  6.744  0.169  74     83  
i1.34  6.994  0.944  55     81  
i1.35  6.994  0.773  74     83  
i1.36  6.994  0.698  71     82  
i1.37  6.994  0.673  67     49  
i1.38  7.994  2.019  60     68  
i1.39  7.994  0.348  72     86  
i1.40  7.994  0.329  76     82  
i1.41  8.494  0.285  76     72  
i1.42  8.494  0.246  72     62  
i1.43  8.994  0.267  74     83  
i1.44  8.994  0.267  77     79  
i1.45  9.494  0.319  79     73  
i1.46  9.494  0.335  76     68  
i1.47  9.994  0.365  79     79  
i1.48  9.994  1.913  53     77  
i1.49  9.994  0.340  76     75  
i1.50  10.494 0.431  77     78  
i1.51  10.494 0.335  74     83  
i1.52  10.994 0.275  76     83  
i1.53  10.994 0.267  72     68  
i1.54  11.494 0.296  74     85  
i1.55  11.494 0.267  71     73  
i1.56  11.994 0.358  72     84  
i1.57  11.994 0.350  67     75  
i1.58  11.994 1.773  55     68  
i1.59  12.494 0.425  72     89  
i1.60  12.494 0.367  67     54  
i1.61  12.994 0.402  67     60  
i1.62  12.994 0.388  74     91  
i1.63  13.494 0.317  76     79  
i1.64  13.494 0.288  67     50  
i1.65  13.494 0.242  72     65  
i1.66  13.994 7.673  55     76  
i1.67  13.994 6.979  74     98  
i1.68  13.994 7.592  67     79  
i1.69  13.994 3.946  72     78  
i1.70  15.994 5.544  43     103 
i1.71  17.994 3.023  71     80  
i1.72  20.994 0.667  72     110 
i1.73  21.994 0.290  72     105 
i1.74  21.994 0.313  60     112 
i1.75  21.994 0.260  64     111 
i1.76  21.994 0.302  48     108 
i1.77  21.994 0.281  67     105 
f0  23
e
