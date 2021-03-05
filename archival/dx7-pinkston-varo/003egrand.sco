;============================================================================
; ACOUSTIC PIANO - ALGORITHM #16
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
                        99      3       80      28      15      46      99      90      0       0     
;AMS      FIXED?   FREQ   DET    RSS
                        0       0       1       0       2     

; OPERATOR 2 PARAMETERS
f13 0 32    -2             
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        91      2       75      73      44      86      99      53      7       0     
;AMS      FIXED?   FREQ   DET    RSS
                        0       1       19.6    0       1     

; OPERATOR 3 PARAMETERS
f14 0 32    -2 
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        81      2       77      72      10      37      99      99      0       83    
;AMS      FIXED?   FREQ   DET    RSS
                        0       0       1       -1      2    

; OPERATOR 4 PARAMETERS
f15 0 32    -2         
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        66      1       78      72      11      41      99      88      0       0     
;AMS      FIXED?   FREQ   DET    RSS
                        0       0       3       -3      2                                                     

; OPERATOR 5 PARAMETERS
f16 0 32    -2 
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        68      3       78      72      14      50      99      96      0       0     
;AMS      FIXED?   FREQ   DET    RSS
                        0       0       2       0       4     

; OPERATOR 6 PARAMETERS
f17 0 32    -2 
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        60      6       82      49      28      39      87      73      0       37    
;AMS      FIXED?   FREQ   DET    RSS        
                        0       0       24.30   -6      5    

;====================================================================;
;                       Yamaha DX7 Algorithm 16                      ;
;                                                                    ;
;    p02 = start     p03 = dur       p04 = pch       p05 = vel       ;
;    p06 = panfac    p07 = vibdel    p08 = vibwth    p09 = vibhz     ;
;    p10 = op1fn     p11 = op2fn     p12 = op3fn     p13 = op4fn     ;
;    p14 = op5fn     p15 = op6fn     p16 = ampfn     p17 = pkamp     ;
;    p18 = rsfn      p19 = devfn     p20 = erisfn    p21 = edecfn    ;
;    p22 = vsfn      p23 = velfn     p24 = feedfn    p25 = feedbk    ;
;                    p26 = Algorithm Number (Disabled)               ;
;====================================================================;

i1.01  0.000  2.350  63     68     0      0      0      0    
       12     13     14     15     16     17     2      10000
       3      8      4      6      10     9      11     3 ;16

t       0.000   86.000
i1.02  0.250  0.271  67     47  
i1.03  0.500  0.244  70     59  
i1.04  0.744  0.283  75     64  
i1.05  0.994  0.267  79     69  
i1.06  1.244  0.383  75     59  
i1.07  1.494  0.331  70     68  
i1.08  1.744  0.229  67     59  
i1.09  1.994  0.271  80     60  
i1.10  2.244  0.262  67     55  
i1.11  2.487  0.329  70     60  
i1.12  2.737  0.279  75     74  
i1.13  2.987  0.315  79     79  
i1.14  2.987  0.354  63     54  
i1.15  3.237  0.202  67     56  
i1.16  3.487  0.267  77     70  
i1.17  3.737  0.240  79     63  
i1.18  3.987  0.879  62     67  
i1.19  3.987  0.302  77     57  
i1.20  4.238  0.279  68     75  
i1.21  4.488  0.221  72     66  
i1.22  4.738  0.531  77     72  
i1.23  4.988  1.706  62     67  
i1.24  5.238  0.248  68     65  
i1.25  5.488  0.296  72     70  
i1.26  5.738  0.269  77     73  
i1.27  5.988  0.242  79     78  
i1.28  6.238  0.256  68     62  
i1.29  6.488  0.273  72     58  
i1.30  6.738  0.162  77     57  
i1.31  6.988  0.981  55     63  
i1.32  6.988  0.223  75     61  
i1.33  7.231  0.256  67     55  
i1.34  7.481  0.219  74     67  
i1.35  7.731  0.260  67     54  
i1.36  7.981  0.298  75     86  
i1.37  7.981  0.475  60     63  
i1.38  8.231  0.256  67     63  
i1.39  8.481  0.267  72     67  
i1.40  8.731  0.485  75     66  
i1.41  8.981  0.290  48     87  
i1.42  9.231  0.290  67     60  
i1.43  9.481  0.281  72     67  
i1.44  9.731  0.279  75     66  
i1.45  9.981  0.885  36     84  
i1.46  9.981  0.231  77     87  
i1.47  10.231 0.313  75     60  
i1.48  10.481 0.221  72     69  
i1.49  10.731 0.169  67     66  
i1.50  10.981 0.260  63     75  
i1.51  11.231 0.231  62     80  
i1.52  11.481 0.242  60     61  
i1.53  11.731 0.294  58     52  
i1.54  11.981 1.225  32     77  
i1.55  11.981 0.538  56     66  
i1.56  11.981 0.919  44     76  
i1.57  11.981 0.473  60     65  
i1.58  11.981 0.283  51     83  
i1.59  12.475 0.223  51     78  
i1.60  12.719 0.554  56     78  
i1.61  12.719 0.523  60     83  
i1.62  12.719 0.246  51     25  
i1.63  12.969 0.244  44     61  
i1.64  13.219 0.206  51     72  
i1.65  13.469 0.285  56     44  
i1.66  13.719 0.771  58     64  
i1.67  13.969 0.575  62     85  
i1.68  13.969 0.827  46     75  
i1.69  13.969 0.319  53     84  
i1.70  13.969 1.194  34     67  
i1.71  14.469 0.769  53     55  
i1.72  14.719 0.294  63     65  
i1.73  14.969 0.248  46     64  
i1.74  15.462 0.225  62     79  
i1.75  15.462 0.079  34     65  
i1.76  15.962 2.790  63     70  
i1.77  15.962 2.663  27     51  
i1.78  15.962 2.698  55     66  
i1.79  15.962 2.673  39     67  
i1.80  15.962 2.681  53     76  
i1.81  15.962 2.794  58     66  
f0  20
e
