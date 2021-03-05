;====================================================================;
;       test score for DX7 alg 4 orc                                ;
;                                                                    ;
;       (imitates the EXPRESSHUN voice...sort of)                    ;
;                                                                    ;
;       DX72Cscore by Jeff Harrington                                ;
;====================================================================;
f01 0 512   10    1  
; operator fpoutput level to amp scale function (data from Chowning/Bristow)
f02 0 128   7     0     10    .003  10    .013
      10    .031  10    .079  10    .188  10    .446
      5     .690  5     1.068 5     1.639 5     2.512
      5     3.894 5     6.029 5     9.263 4     13.119
      29    13.119
; rate scaling function
f03 0 128   7     0     128   1 
; eg rate rise function for lvl change between 0 and 99 (data from Opcode)
f04 0 128   -7    38    5     22.8  5     12    5  
      7.5   5     4.8   5     2.7   5     1.8   5     1.3 
      8     .737  3     .615  3     .505  3     .409  3
                        .321    6       .080    6       .055    2       .032    3       .024  
                        3       .018    3       .014    3       .011    3       .008    3  
                        .008    3       .007    3       .005    3       .003    32      .003 
; eg rate rise percentage function
f05 0 128   -7    .00001      31    .00001      4     .02   5 
                        .06     10      .14     10      .24     10      .35     10      .50  
                        10      .70     5       .86     4       1.0     29      1.0  
; eg rate decay function for lvl change between 0 and 99
f06 0 128   -7    318   4     181   5     115   5 
      63    5     39.7  5     20    5     11.2  5     7   
      8     5.66  3     3.98  6     1.99  3     1.34  3
                        .99     3       .71     5       .41     3       .15     3       .081  
                        3       .068    3       .047    3       .037    3       .025    3  
                        .02     3       .013    3       .008    36      .008 
; eg rate decay percentage function
f07 0 128   -7    .00001      10    .25   10    .35   10
                        .43     10      .52     10      .59     10      .70     10      .77  
                        10      .84     10      .92     9       1.0     29      1.0  
; eg level to peak deviation mapping function (index in radians = Index / 2PI)
f08 0 128   -7    0     10    .000477     10    .002
      10    .00493      10    .01257      10    .02992      10    .07098
      5     .10981      5     .16997      5     .260855     5     .39979
      5     .61974      5     .95954      5     1.47425     4     2.08795
      29    2.08795
; velocity to amp factor mapping function (rough guess)
f09 0 129   9     .25   1     0   
; velocity sensitivity scaling function
f10 0 8     -7    0     8     1   
; feedback scaling function
f11 0 8     -7    0     8     7   
f12 0 32    -2    99    2     79    28    24    33   
      99    97    0     0   
      0     0     1.000000    -6   
      3   
f13 0 32    -2    74    2     74    38    17    35   
      99    95    0     0   
      0     0     0.995000    1   
      1   
f14 0 32    -2    85    3     60    53    22    4   
      99    91    0     0   
      0     0     1.000000    -4   
      1   
f15 0 32    -2    99    1     80    28    17    35   
      99    33    0     0   
      0     0     1.010000    -2   
      3   
f16 0 32    -2    88    3     69    55    19    35   
      99    94    0     0   
      0     0     1.000000    -4   
      3   
f17 0 32    -2    74    7     34    22    16    4   
      88    1     0     0   
      0     0     14.000000   3   
      7   
t       0       40    
i01 0  .49    6.00   87     0      0      0      35   
       12     13     14     15     16     17     2      4000 
       3      8      4      6      10     9      11     3   
; Algorithm = 4
; Patch name is EXPRESSHUN

i 1.1  1.00   .54    6.07   87
i 1.2  2.00   .16    6.08   75
i 1.3  2.49   .20    7.03   90
i 1.4  3.01   .20    7.04   74
i 1.5  3.50   .18    7.11   90
i 1 4.01      .15    8.00   75
i 1.1  4.24   .13    8.07   69
i 1.2  4.50   .07    8.08   72
i 1.3  4.72   .09    9.03   90
i 1.4  4.98   .16    9.00   79
f0  9                                   ;allow for a 4-beat final decay.
e
