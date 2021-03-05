
/* Generate a set of band-limited function tables.		*/
/* TABLE:	first output table number. One table is		*/
/*		generated for each MIDI note number (0 - 127),	*/
/*		the last table is (TABLE + 127).		*/
/* SIZE:	length of output ftables (in samples)		*/
/* SRC:		source table number (may not be equal to TABLE)	*/
/* MINH:	lowest harmonic partial number			*/

#define FGEN128(TABLE'SIZE'SRC'MINH) #

f [ $TABLE  +     0     ]     0     $SIZE -30   $SRC  $MINH 2935.49     48000
f [ $TABLE  +     1     ]     0     $SIZE -30   $TABLE      $MINH 2770.74     48000
f [ $TABLE  +     2     ]     0     $SIZE -30   $TABLE      $MINH 2615.23     48000
f [ $TABLE  +     3     ]     0     $SIZE -30   $TABLE      $MINH 2468.45     48000
f [ $TABLE  +     4     ]     0     $SIZE -30   $TABLE      $MINH 2329.90     48000
f [ $TABLE  +     5     ]     0     $SIZE -30   $TABLE      $MINH 2199.13     48000
f [ $TABLE  +     6     ]     0     $SIZE -30   $TABLE      $MINH 2075.71     48000
f [ $TABLE  +     7     ]     0     $SIZE -30   $TABLE      $MINH 1959.21     48000
f [ $TABLE  +     8     ]     0     $SIZE -30   $TABLE      $MINH 1849.24     48000
f [ $TABLE  +     9     ]     0     $SIZE -30   $TABLE      $MINH 1745.45     48000
f [ $TABLE  +     10    ]     0     $SIZE -30   $TABLE      $MINH 1647.49     48000
f [ $TABLE  +     11    ]     0     $SIZE -30   $TABLE      $MINH 1555.02     48000
f [ $TABLE  +     12    ]     0     $SIZE -30   $TABLE      $MINH 1467.75     48000
f [ $TABLE  +     13    ]     0     $SIZE -30   $TABLE      $MINH 1385.37     48000
f [ $TABLE  +     14    ]     0     $SIZE -30   $TABLE      $MINH 1307.61     48000
f [ $TABLE  +     15    ]     0     $SIZE -30   $TABLE      $MINH 1234.22     48000
f [ $TABLE  +     16    ]     0     $SIZE -30   $TABLE      $MINH 1164.95     48000
f [ $TABLE  +     17    ]     0     $SIZE -30   $TABLE      $MINH 1099.57     48000
f [ $TABLE  +     18    ]     0     $SIZE -30   $TABLE      $MINH 1037.85     48000
f [ $TABLE  +     19    ]     0     $SIZE -30   $TABLE      $MINH 979.60      48000
f [ $TABLE  +     20    ]     0     $SIZE -30   $TABLE      $MINH 924.62      48000
f [ $TABLE  +     21    ]     0     $SIZE -30   $TABLE      $MINH 872.73      48000
f [ $TABLE  +     22    ]     0     $SIZE -30   $TABLE      $MINH 823.74      48000
f [ $TABLE  +     23    ]     0     $SIZE -30   $TABLE      $MINH 777.51      48000
f [ $TABLE  +     24    ]     0     $SIZE -30   $TABLE      $MINH 733.87      48000
f [ $TABLE  +     25    ]     0     $SIZE -30   $TABLE      $MINH 692.68      48000
f [ $TABLE  +     26    ]     0     $SIZE -30   $TABLE      $MINH 653.81      48000
f [ $TABLE  +     27    ]     0     $SIZE -30   $TABLE      $MINH 617.11      48000
f [ $TABLE  +     28    ]     0     $SIZE -30   $TABLE      $MINH 582.48      48000
f [ $TABLE  +     29    ]     0     $SIZE -30   $TABLE      $MINH 549.78      48000
f [ $TABLE  +     30    ]     0     $SIZE -30   $TABLE      $MINH 518.93      48000
f [ $TABLE  +     31    ]     0     $SIZE -30   $TABLE      $MINH 489.80      48000
f [ $TABLE  +     32    ]     0     $SIZE -30   $TABLE      $MINH 462.31      48000
f [ $TABLE  +     33    ]     0     $SIZE -30   $TABLE      $MINH 436.36      48000
f [ $TABLE  +     34    ]     0     $SIZE -30   $TABLE      $MINH 411.87      48000
f [ $TABLE  +     35    ]     0     $SIZE -30   $TABLE      $MINH 388.76      48000
f [ $TABLE  +     36    ]     0     $SIZE -30   $TABLE      $MINH 366.94      48000
f [ $TABLE  +     37    ]     0     $SIZE -30   $TABLE      $MINH 346.34      48000
f [ $TABLE  +     38    ]     0     $SIZE -30   $TABLE      $MINH 326.90      48000
f [ $TABLE  +     39    ]     0     $SIZE -30   $TABLE      $MINH 308.56      48000
f [ $TABLE  +     40    ]     0     $SIZE -30   $TABLE      $MINH 291.24      48000
f [ $TABLE  +     41    ]     0     $SIZE -30   $TABLE      $MINH 274.89      48000
f [ $TABLE  +     42    ]     0     $SIZE -30   $TABLE      $MINH 259.46      48000
f [ $TABLE  +     43    ]     0     $SIZE -30   $TABLE      $MINH 244.90      48000
f [ $TABLE  +     44    ]     0     $SIZE -30   $TABLE      $MINH 231.16      48000
f [ $TABLE  +     45    ]     0     $SIZE -30   $TABLE      $MINH 218.18      48000
f [ $TABLE  +     46    ]     0     $SIZE -30   $TABLE      $MINH 205.94      48000
f [ $TABLE  +     47    ]     0     $SIZE -30   $TABLE      $MINH 194.38      48000
f [ $TABLE  +     48    ]     0     $SIZE -30   $TABLE      $MINH 183.47      48000
f [ $TABLE  +     49    ]     0     $SIZE -30   $TABLE      $MINH 173.17      48000
f [ $TABLE  +     50    ]     0     $SIZE -30   $TABLE      $MINH 163.45      48000
f [ $TABLE  +     51    ]     0     $SIZE -30   $TABLE      $MINH 154.28      48000
f [ $TABLE  +     52    ]     0     $SIZE -30   $TABLE      $MINH 145.62      48000
f [ $TABLE  +     53    ]     0     $SIZE -30   $TABLE      $MINH 137.45      48000
f [ $TABLE  +     54    ]     0     $SIZE -30   $TABLE      $MINH 129.73      48000
f [ $TABLE  +     55    ]     0     $SIZE -30   $TABLE      $MINH 122.45      48000
f [ $TABLE  +     56    ]     0     $SIZE -30   $TABLE      $MINH 115.58      48000
f [ $TABLE  +     57    ]     0     $SIZE -30   $TABLE      $MINH 109.09      48000
f [ $TABLE  +     58    ]     0     $SIZE -30   $TABLE      $MINH 102.97      48000
f [ $TABLE  +     59    ]     0     $SIZE -30   $TABLE      $MINH 97.19 48000
f [ $TABLE  +     60    ]     0     $SIZE -30   $TABLE      $MINH 91.73 48000
f [ $TABLE  +     61    ]     0     $SIZE -30   $TABLE      $MINH 86.59 48000
f [ $TABLE  +     62    ]     0     $SIZE -30   $TABLE      $MINH 81.73 48000
f [ $TABLE  +     63    ]     0     $SIZE -30   $TABLE      $MINH 77.14 48000
f [ $TABLE  +     64    ]     0     $SIZE -30   $TABLE      $MINH 72.81 48000
f [ $TABLE  +     65    ]     0     $SIZE -30   $TABLE      $MINH 68.72 48000
f [ $TABLE  +     66    ]     0     $SIZE -30   $TABLE      $MINH 64.87 48000
f [ $TABLE  +     67    ]     0     $SIZE -30   $TABLE      $MINH 61.23 48000
f [ $TABLE  +     68    ]     0     $SIZE -30   $TABLE      $MINH 57.79 48000
f [ $TABLE  +     69    ]     0     $SIZE -30   $TABLE      $MINH 54.55 48000
f [ $TABLE  +     70    ]     0     $SIZE -30   $TABLE      $MINH 51.48 48000
f [ $TABLE  +     71    ]     0     $SIZE -30   $TABLE      $MINH 48.59 48000
f [ $TABLE  +     72    ]     0     $SIZE -30   $TABLE      $MINH 45.87 48000
f [ $TABLE  +     73    ]     0     $SIZE -30   $TABLE      $MINH 43.29 48000
f [ $TABLE  +     74    ]     0     $SIZE -30   $TABLE      $MINH 40.86 48000
f [ $TABLE  +     75    ]     0     $SIZE -30   $TABLE      $MINH 38.57 48000
f [ $TABLE  +     76    ]     0     $SIZE -30   $TABLE      $MINH 36.40 48000
f [ $TABLE  +     77    ]     0     $SIZE -30   $TABLE      $MINH 34.36 48000
f [ $TABLE  +     78    ]     0     $SIZE -30   $TABLE      $MINH 32.43 48000
f [ $TABLE  +     79    ]     0     $SIZE -30   $TABLE      $MINH 30.61 48000
f [ $TABLE  +     80    ]     0     $SIZE -30   $TABLE      $MINH 28.89 48000
f [ $TABLE  +     81    ]     0     $SIZE -30   $TABLE      $MINH 27.27 48000
f [ $TABLE  +     82    ]     0     $SIZE -30   $TABLE      $MINH 25.74 48000
f [ $TABLE  +     83    ]     0     $SIZE -30   $TABLE      $MINH 24.30 48000
f [ $TABLE  +     84    ]     0     $SIZE -30   $TABLE      $MINH 22.93 48000
f [ $TABLE  +     85    ]     0     $SIZE -30   $TABLE      $MINH 21.65 48000
f [ $TABLE  +     86    ]     0     $SIZE -30   $TABLE      $MINH 20.43 48000
f [ $TABLE  +     87    ]     0     $SIZE -30   $TABLE      $MINH 19.28 48000
f [ $TABLE  +     88    ]     0     $SIZE -30   $TABLE      $MINH 18.20 48000
f [ $TABLE  +     89    ]     0     $SIZE -30   $TABLE      $MINH 17.18 48000
f [ $TABLE  +     90    ]     0     $SIZE -30   $TABLE      $MINH 16.22 48000
f [ $TABLE  +     91    ]     0     $SIZE -30   $TABLE      $MINH 15.31 48000
f [ $TABLE  +     92    ]     0     $SIZE -30   $TABLE      $MINH 14.45 48000
f [ $TABLE  +     93    ]     0     $SIZE -30   $TABLE      $MINH 13.64 48000
f [ $TABLE  +     94    ]     0     $SIZE -30   $TABLE      $MINH 12.87 48000
f [ $TABLE  +     95    ]     0     $SIZE -30   $TABLE      $MINH 12.15 48000
f [ $TABLE  +     96    ]     0     $SIZE -30   $TABLE      $MINH 11.47 48000
f [ $TABLE  +     97    ]     0     $SIZE -30   $TABLE      $MINH 10.82 48000
f [ $TABLE  +     98    ]     0     $SIZE -30   $TABLE      $MINH 10.22 48000
f [ $TABLE  +     99    ]     0     $SIZE -30   $TABLE      $MINH 9.64  48000
f [ $TABLE  +     100   ]     0     $SIZE -30   $TABLE      $MINH 9.10  48000
f [ $TABLE  +     101   ]     0     $SIZE -30   $TABLE      $MINH 8.59  48000
f [ $TABLE  +     102   ]     0     $SIZE -30   $TABLE      $MINH 8.11  48000
f [ $TABLE  +     103   ]     0     $SIZE -30   $TABLE      $MINH 7.65  48000
f [ $TABLE  +     104   ]     0     $SIZE -30   $TABLE      $MINH 7.22  48000
f [ $TABLE  +     105   ]     0     $SIZE -30   $TABLE      $MINH 6.82  48000
f [ $TABLE  +     106   ]     0     $SIZE -30   $TABLE      $MINH 6.44  48000
f [ $TABLE  +     107   ]     0     $SIZE -30   $TABLE      $MINH 6.07  48000
f [ $TABLE  +     108   ]     0     $SIZE -30   $TABLE      $MINH 5.73  48000
f [ $TABLE  +     109   ]     0     $SIZE -30   $TABLE      $MINH 5.41  48000
f [ $TABLE  +     110   ]     0     $SIZE -30   $TABLE      $MINH 5.11  48000
f [ $TABLE  +     111   ]     0     $SIZE -30   $TABLE      $MINH 4.82  48000
f [ $TABLE  +     112   ]     0     $SIZE -30   $TABLE      $MINH 4.55  48000
f [ $TABLE  +     113   ]     0     $SIZE -30   $TABLE      $MINH 4.30  48000
f [ $TABLE  +     114   ]     0     $SIZE -30   $TABLE      $MINH 4.05  48000
f [ $TABLE  +     115   ]     0     $SIZE -30   $TABLE      $MINH 3.83  48000
f [ $TABLE  +     116   ]     0     $SIZE -30   $TABLE      $MINH 3.61  48000
f [ $TABLE  +     117   ]     0     $SIZE -30   $TABLE      $MINH 3.41  48000
f [ $TABLE  +     118   ]     0     $SIZE -30   $TABLE      $MINH 3.22  48000
f [ $TABLE  +     119   ]     0     $SIZE -30   $TABLE      $MINH 3.04  48000
f [ $TABLE  +     120   ]     0     $SIZE -30   $TABLE      $MINH 2.87  48000
f [ $TABLE  +     121   ]     0     $SIZE -30   $TABLE      $MINH 2.71  48000
f [ $TABLE  +     122   ]     0     $SIZE -30   $TABLE      $MINH 2.55  48000
f [ $TABLE  +     123   ]     0     $SIZE -30   $TABLE      $MINH 2.41  48000
f [ $TABLE  +     124   ]     0     $SIZE -30   $TABLE      $MINH 2.28  48000
f [ $TABLE  +     125   ]     0     $SIZE -30   $TABLE      $MINH 2.15  48000
f [ $TABLE  +     126   ]     0     $SIZE -30   $TABLE      $MINH 2.03  48000
f [ $TABLE  +     127   ]     0     $SIZE -30   $TABLE      $MINH 1.91  48000

#

