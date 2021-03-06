<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>

; Shamil Gainetdinov
;was born in 1973 in Sterlitamak (Bashkiria, Russia). In 1990 he has graduated the Physical-
;Mathematical School at Novosibirsk State University. In 1995 he has graduated the Art College 
;in Tobolsk as a flutist. Since 1995 he has been studying a sound producing and musical theory 
;at the Ural State Conservatory and CSound class of Vladimir Volkov at the Electro-Acoustic 
;Music Studio.
;
; This piece is his own first experience of creation of music by means of CSound solely.
;There are no both exact reproduction of some concrete national style and a purpose to copy 
;a "live" timbres. This better a music picture expressing a mood of tender waiting for
;a signifikant event. Here were used FOF and pluck generatores (and also their modifications) 
;in combination with additive synthesis. FOF generatore was used both for synthesis of guttural 
;singing timbre and horn-like sound, also for the creation of some other sounds. 
;
;
;================= Shamil Gainetdinov ========================================================
;=================== HE WILL COME ============================================================
;orchestra

 sr=44100
 kr=441
 ksmps=100
 nchnls=2

         instr 1    ;gong's part 1
idur=p3
ifr=p5*.7501
iamp=p4*.9
  if ifr>400 goto lab2
  if ifr<=400 goto lab1
    lab1:
  kb line .6,idur,.4 
    goto contin
    lab2:
  kb line .4,idur,.6 
     goto contin
    contin:
  a2 oscil iamp , 1/idur, 51
  a1 oscili a2, ifr , 11

  kbw linseg 200,idur*.1,40,idur*.9,2
  kflt linseg 400,idur*.05,250,idur*.25,220,idur*.7,ifr
  ar reson a1,kflt,kbw,1.3,0
  af balance ar,a1

outs af*kb,af*(1-kb)
endin

          instr 13  ;gong's part 2

  p2=p2+.07

 idur1 = p3*.9
 idur2 = p3*.8
 idur3 = p3*.65
 idur4 = p3*.55
 idur5 = p3*.325
 idur6 = p3*.35
 idur7 = p3*.25
 idur8 = p3*.2
 idur9 = p3*.15
 idur10 = p3*.1
 idur11 = p3*.075

 iamp1 = p4
 iamp2 = p4*0.87
 iamp3 = p4*1.35
 iamp4 = p4*1.80
 iamp5 = p4*1.67
 iamp6 = p4*1.1
 iamp7 = p4*.46
 iamp8 = p4*.73
 iamp9 = p4*.53
 iamp10 = p4*.5
 iamp11 = p4*.5

ifq1 = 180
ifq2 = 205.5
ifq3 = 290.25
ifq4 = 450.75
ifq5 = 254.52
ifq6 = 498.75
ifq7 = 607.5
ifq8 = 675.5
ifq9 = 628
ifq10 = 749.3
ifq11 = 781
 
  
  k1  expon   iamp1, idur1, .0001
  a1  oscili   k1, ifq1, 11
  
  
  k2  expon   iamp2, idur2, .0001
  a2  oscili   k2, ifq2, 11
    
  k3  expon   iamp3, idur3, .0001
  a3  oscili   k3, ifq3, 11
   
  k4  expon   iamp4, idur4, .0001
  a4  oscili   k4, ifq4, 11
  
  k5  expon   iamp5, idur5, .0001
  a5  oscili   k5, ifq5, 11
  
  k6  expon   iamp6, idur6, .0001
  a6  oscili   k6, ifq6, 11
 
  k7  expon   iamp7, idur7, .0001
  a7  oscili   k7, ifq7, 11
  
  k8  expon   iamp8, idur8, .0001
  a8  oscili   k8, ifq8, 11
  
  k9  expon   iamp9, idur9, .0001
  a9  oscili   k9, ifq9, 11
 
  k10  expon   iamp10, idur10, .001
  a10  oscili   k10, ifq10, 11
  
  k11  expon   iamp11, idur11, .001
  a11  oscili   k11, ifq11, 11
  
  asrc=a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11
  kbw linseg 200,idur1*.1,40,idur1*.9,2
  kflt linseg 400,idur1*.05,250,idur1*.25,220,idur1*.7,ifq1
  ar reson asrc,kflt,kbw,1.3,0
  af balance ar,asrc
  kb1 linseg .5,idur1*.1,.8,idur1*.9,.5
  kb2 linseg .5,idur1*.5,.2,idur1*.5,.6 
outs af*kb1,af*kb2
  endin

         instr 11;   crescendo of the gong like sound
 idur=p3
 ifq1=p5*.75
 iamp=p4*1.2
 ibal=p6      ;balance
kbal linseg ibal,idur*.9,1-ibal,idur*.1,ibal
  if p2<50 goto lab1
  if p2>50 goto lab2
  lab1:
kamp linseg 0,idur*.85,1.8,idur*.05,2.1,idur*.06,1.8,idur*.04,0
 goto next
  lab2:
kamp linseg 0,idur*.65,1.7,idur*.35,0
 goto next
     next:
  if ifq1>300 && ifq1<600 goto lab4 
  if ifq1<300 && ifq1>600 goto lab3
 lab3: 
kmod linseg 0,idur*.96,3,idur*.04,0
goto contin
 lab4: 
kmod linseg 0,idur*.96,6,idur*.04,0
goto contin
 contin: 
  amod oscil kmod,5,1
  af=ifq1+amod/2
 a1 oscili iamp*kamp, af,11

  kbw linseg 2,idur*.7,40,idur*.3,200
  kflt linseg 400,idur*.05,250,idur*.25,220,idur*.7,ifq1
  ar reson a1,kflt,kbw,1.3,0
  af balance ar,a1

outs af*kbal,af*(1-kbal)
 endin

         instr 12  ;gong spectrum(whithout attack)
idur=p3
ifq1=p5*.75
iamp=p4
ibal=p6
kamp linseg 0,idur*.4,.9,idur*.6,0
  a1 oscili iamp, ifq1, 11
outs a1*kamp*ibal,a1*kamp*(1-ibal)
 endin

          instr 2;glock & bass string 
idur=p3
iamp=ampdb(p4)
ifa=cpspch(p5)
ib=p6
 if p5=6.02 goto lab1
 if p5>7.02 goto contin
  lab1:
 iamp=iamp*1.73 
 goto contin
  contin: 
kamp1 linseg 0,.0001,iamp,idur-.0001,0
a03 pluck kamp1,ifa,4096,7,1
outs a03*ib,a03*(1-ib)
 endin


          instr 21;  bow-string
idur=p3
iamp=ampdb(p4)
ifa=cpspch(p5)
  kb oscil .9,1.5/idur,10 
  kf randi ifa/6,.2
  kamp linseg 0,idur*.0001,iamp,idur*.98,0,idur*.0199,0
 a0 pluck kamp,kf,4096/4,7,1
kw expon 200, idur, 10
a1 reson a0,500,kw,1
a2 balance a0,a1
outs a2*kb,a2*(1-kb)
 endin

        instr 32; recitativo 1
ifa=cpspch(p5)
idur=p3
iamp=ampdb(p4)
ib=p6
 kamp linseg 1,16,1,7,0
 k01 expseg 1,.23,.12,.27,1.2,3.5,1,.25,.12,.25,1,.5,1.1,.25,.12,.25,1,2.5,.95,.25,.12,.25,1,14.5,1.02
 k02 expseg 1.25,.27,.12,.23,1,3.7,1.3,.25,.12,.25,1.1,3,1,.24,.14,.26,1.01,3.4,.85,11.4,1
;     xamp       xfund  xform     koct    kband  kris  kdur  kdec  iolaps  ifna ifnb itotdur 
a2 fof iamp,     ifa,  ifa*k01*2    ,0.3,    1,   .003,  .02, .007,  ifa/5,   1,   2,   idur 
a3 fof iamp,     ifa,  ifa*k02*2    ,0.3,    2,   .005,  .02, .007,  ifa/5,   3,   2,   idur
 a1=(a2+a3)*kamp
 a01 reverb2 a1,1.7,.65
 a0=a1+a01*.3                  
outs a0*ib,a0*(1-ib)
 endin

       instr 4; percussion
idur=p3
iamp=ampdb(p4)
ifa=cpspch(p5)
ib=p6
kb line ib,idur,1-ib
kbp expseg 500,idur*.4,1.01,idur*.6,4
   an rand 10000  ; creation a sound from white noise by means butterbp and additive synthesis
k01 expseg .001,idur*.3,.5,idur*.7,.005
k00 linseg 0,idur*.4,.6,idur*.6,0
 a04 butterbp an,ifa*.5,kbp  
 a05 butterbp an,ifa*1,kbp
 a051 oscil iamp,ifa*1.2,4 ;(gen 11)
 a06 butterbp an,ifa*2.4,kbp
 a061 oscil iamp,ifa*2.5,4
 asig=a04+a05+a051/3.5+a06/4.6+a061/4.7
 asig1=a06/4+a061/4
outs (asig+asig1)*k00*kb,(asig+asig1)*k00*(1-kb)
endin

        instr 41 ;another percussion (alike methode)
idur=p3
iamp=ampdb(p4)
ifa=cpspch(p5)
ib=p6
 kb1 line ib,idur,1-ib
 kb2 linseg ib,idur*.4,1-ib,idur*.6,1-ib
 kbp expseg 10,idur*.8,1.01,idur*.2,4
   an rand 10000
 kamp linseg 0,idur*.8,1,idur*.2,0
   a04 butterbp an,ifa*.5,kbp
   a05 butterbp an,ifa*1,kbp
   a051 oscil iamp,ifa*1.2,4
   a06 butterbp an,ifa*2.4,kbp
   a061 oscil iamp,ifa*2.5,4
asig=a04+a05+a051/3.5+a06/4.6+a061/4.7
asig1=a06/4+a061/4
outs (asig*kb1+asig1*kb2)*kamp,(asig*(1-kb1)+asig1*(1-kb2))*kamp
  endin

        instr 31 ;strange kind of sitar
ifa=cpspch(p5)
idur=p3
iamp=ampdb(p4)
ib=p6
 if ifa>6.02 goto lab1
 if ifa<6.02 goto lab2
   lab1:
  kamp linseg 0,5,1,17,1,1,0
  k01 expseg 9.25,5,8.2,3,8.5,2,6.75,3,7.9,10,5.25
  k02 expseg 6,6,7.75,3,6.9,3,8,11,6.25
      goto contin
   lab2:  
  kamp linseg 0,5,1,5,1,12,1.6,3,0
  k01 expseg 9.25,5,8.2,3,8.5,2,6.75,3,7.9,10,5.25
  k02 expseg 6,6,7.75,3,6.9,3,8,13,6.25
      goto contin
   contin:
  kb linseg ib,idur*.1,1-ib,idur*.1,.5,idur*.5,1-ib,idur*.3,ib
  
 ;     xamp     xfund  xform     koct    kband  kris   kdur  kdec  iolaps  ifna ifnb itotdur 
a2 fof iamp,     ifa,  ifa*k01    ,0.3,     1,     .003,  .02, .007,  ifa/5,   1,    2,   idur 
a3 fof iamp,     ifa,  ifa*k02    ,0.3,     1,     .005,  .02, .007,  ifa/5,   3,    2,   idur
   a1=a2+a3
 a01 reverb2 a1,3.1,.65
 a0=(a1+a01*.4)*kamp
a02 butterhp a0,ifa*k01 ; this part of sound moves on panorama
a03 butterlp a0,ifa*k01+20 ;this part remain the same 
 display k01,idur
 display k02,idur
outs a03*ib+a02*kb,a03*(1-ib)+a02*(1-kb)
  endin

        instr 33; recitativo 2
ifa=cpspch(p5)
idur=p3
iamp=ampdb(p4)
ib=p6
  kf expseg 1,idur*.8,1,idur*.2,.98
  kamp linseg 0,.001,1,21,1,9.999,1,7,0
  k01 expseg 1,.23,.1,.27,1,4.5,1.1,.23,.1,.27,1.2,4.5,1,.23,.1,.27,1,20.5,1.3
  k02 expseg 1.25,1,1,.23,.11,.27,1.25,4,1.25,.23,.12,.27,1,4,1.25,.27,.12,.23,1.25,.20,.1,.5,1
;     xamp       xfund  xform     koct    kband  kris  kdur  kdec  iolaps  ifna ifnb itotdur 
a2 fof iamp,  kf*ifa,  ifa*k01*2    ,0.3,    1,   .003,  .02, .007,  ifa/5,   1,   2,   idur 
a3 fof iamp,     ifa,  ifa*k02*2    ,0.3,    2,   .005,  .02, .007,  ifa/5,   3,   2,   idur
 a1=(a2+a3)*kamp
a01 reverb2 a1,1.4,.65
a0=a1+a01*.25              
outs a0*ib,a0*(1-ib)
 endin


        instr 3; vox 1
ifa=cpspch(p5)
idur=p3
iamp=ampdb(p4)
ib=p6
 kb linseg ib,idur*.1,.95,idur*.1,.1,idur*.5,.5,idur*.3,ib
 kamp linseg 0,idur*.2,1,idur*.6,1,idur*.2,0
 kmu expseg 1,26,1,4,4.5,1,3,1,3.5,1,1
 k01 expseg 3,2,5.1,3,.5,4,.75,2,.5,2,1.2,1,1,3,.5,1,.75,4,1,4,1
 k02 expseg 1,1,1.3,1,1,1,.5,1,1,1,1.3,1,1,1,1.3,1,1,1,.5,2,1,1,1.2,2,1,3,.75,2,.5,1,1,2,.5,4,.75
                                                                  
;     xamp       xfund  xform       koct    kband  kris  kdur  kdec  iolaps  ifna ifnb itotdur 
a2 fof iamp*kamp, ifa,   ifa*k01*kmu ,0.3,    1,     .003,  .02, .007,  ifa/5,   1,   2,    idur 
a3 fof iamp*kamp, ifa/2, ifa*k02     ,0.3,    2,     .005,  .02, .007,  ifa/5,   3,   2,    idur
a1=a2+a3
a01 reverb2 a1,3.4,.65
a0=a1+a01*.25
a02 butterhp a0,ifa*k01 ; this part moves on panorama
a03 butterlp a0,ifa*k01+15 ; this part remain the same
display k01,idur
display k02,idur
outs a03*ib+a02*kb,a03*(1-ib)+a02*(1-kb)
endin

        instr 35 ;recitativo 3
ifa=cpspch(p5)
idur=p3
iamp=ampdb(p4)
ib=p6
 kamp linseg 1.1,7,1,2,0
 k01 expseg 1,.25,1.2,.25,1,.25,.12,.25,1.2,1,.5,.25,.12,.25,1,6.5,1
 k02 expseg 1.25,1,1.2,.23,.12,.27,1.2,3,.75,.23,.12,.27,1.25,4,1
;     xamp       xfund  xform     koct    kband  kris  kdur  kdec  iolaps  ifna ifnb itotdur 
a2 fof iamp,     ifa,  ifa*k01*2    ,0.3,    1,   .003,  .02, .007,  ifa/5,   1,   2,   idur 
a3 fof iamp,     ifa,  ifa*k02*2    ,0.3,    2,   .005,  .02, .007,  ifa/5,   3,   2,   idur
a1=(a2+a3)*kamp
a01 reverb2 a1,1.4,.65
a0=a1+a01*.25
display k01,idur
display k02,idur
outs a0*ib,a0*(1-ib)
endin

       instr 36; vox(Dei)
idur=p3
iamp=ampdb(p4)
ifa=cpspch(p5)
ib=p6
   kamp expseg .1,idur*.1,1,idur*.62,1,idur*.28,.002
   kmod expseg .001,3.4,.001,1.25,.2,1.25,.005
   kf1 oscil kmod,8,1
if p7=0 goto lab1
if p7=1 goto lab2
 lab1:              ;(horn1)
k1 linseg 1,3.4,3,3,3,.39,4,.4,3,.39,4,.4,3,.15,3.5,.15,3,.15,2.5,.15,3,8.5,2.8
 ;(control of form.freqency) 
;     xamp       xfund  xform     koct    kband  kris  kdur  kdec  iolaps  ifna ifnb itotdur iphs?  ifmode?
a2 fof iamp*kamp, ifa, ifa*k1+kf1     ,0.3,    1,   .003,  .02, .007,  ifa/5,   1,   2,   idur ;, 0,    3
a3 fof iamp*kamp, ifa, ifa*k1+kf1     ,0.3,    2,   .005,  .02, .007,  ifa/5,   3,   2,   idur ;,  0,    3
a1=a2+a3
alp butterlp a1,ifa*k1+kf1
a01 reverb2 a1,3.5,.65
a0=a1+a01*.3+alp*.5
  goto lab4
 lab2:          ;(horn2)
k2 linseg 1,3.4,3,3,3,.39,4,.4,3,.39,4,.4,3,.25,3.5,.15,3,.15,3.5,.15,3,.15,2.5,.15,3,8.5,2.8
 
;     xamp       xfund  xform     koct    kband  kris  kdur  kdec  iolaps  ifna ifnb itotdur iphs?  ifmode?
a2 fof iamp*kamp, ifa, ifa*k2+kf1     ,0.3,    1,   .003,  .02, .007,  ifa/5,   1,   2,   idur ;, 0,    3
a3 fof iamp*kamp, ifa, ifa*k2+kf1     ,0.3,    2,   .005,  .02, .007,  ifa/5,   3,   2,   idur ;,  0,    3
 a1=a2+a3
 alp butterlp a1,100
 a02 reverb2 a1,4,.85
 a0=a1+a02*.4+alp*.5
goto lab4
  lab4:
outs a0*ib,a0*(1-ib)
 goto contin
  contin:
  endin

        instr 37; recitativo 4
ifa=cpspch(p5)
idur=p3
iamp=ampdb(p4)
ib=p6
 if ifa<6.04 goto lab2
 if ifa>7.00 goto lab1
  lab1:
 kf linseg 1,17,1,1,.75,13,.75
 goto contin1
  lab2:
 kf line 1,idur,1
 goto contin1
  contin1:
 kamp linseg 1,22,1,1,.6,5,.05, 3, 0
 k01 expseg 1,.23,.12,.27,1.2,6.5,1,.25,.12,.25,1,3.5,1.1,.25,.12,.25,1,5.5,.95,.25,.12,.25,1,14.5,1
 k02 expseg 1.25,.27,.12,.23,1,6.7,1.3,.25,.12,.25,1.1,6,1,.24,.14,.26,1.01,6.4,.85,7,1,3.4,1
;     xamp       xfund  xform     koct    kband  kris  kdur  kdec  iolaps  ifna ifnb itotdur 
a2 fof iamp,  kf*ifa,  ifa*k01*2    ,0.3,    1,   .003,  .02, .007,  ifa/5,   1,   2,   idur 
a3 fof iamp,  kf*ifa,  ifa*k02*2    ,0.3,    2,   .005,  .02, .007,  ifa/5,   3,   2,   idur
a1=(a2+a3)*kamp
a01 reverb2 a1,1.4,.65
a0=a1+a01*.2 
outs a0*ib,a0*(1-ib)
 endin
 
         instr 38; last word
ifa=cpspch(p5)
idur=p3
iamp=ampdb(p4)
ib=p6
 kf linseg 1,1,1,9,.75
 kamp linseg 1,9.5,1,.5,0
 k01 expseg 1,.23,.12,.27,1.2,9.5,1
 k02 expseg 1.25,.27,.12,.23,1,9.5,1.25
;     xamp       xfund  xform     koct    kband  kris  kdur  kdec  iolaps  ifna ifnb itotdur 
a2 fof iamp,  kf*ifa,  ifa*k01*2    ,0.3,    1,   .003,  .02, .007,  ifa/5,   1,   2,   idur 
a3 fof iamp,  kf*ifa,  ifa*k02*2    ,0.3,    2,   .005,  .02, .007,  ifa/5,   3,   2,   idur
a1=(a2+a3)*kamp
a01 reverb2 a1,1.4,.65
a0=a1+a01*.2                  
outs a0*ib,a0*(1-ib)
 endin

</CsInstruments>
<CsScore>
;=============== Shamil Gainetdinov ============================
;================= HE WILL COME ================================
;score

f1 0 65536 10 3 
f2 0 4096 7 0 4096 20
f3 0 4096 11 2
f4 0 4096 11 1
f5 0 4096 20 1 100
f7 0 4096 20 3 1000
f10 0 2048 10 1 .2
f11 0 65536 9  1 1 0
f51 0 512 5 128 512 1

t 0 56 50 57 55 58 58 59 61 60 

 
i13 0  15    1460  1 ;gong's part2

i1 0   27    2700 240 ;gong's part1
i1 .   27    2500 274 
i1 .   27    2000 387 
i1 .   27    3000 601 
i1 .   6     1000 339
i1 .   4     .    665     
i1 .   27    .    810
i1 .   3     900  900
i1 .   8     800  837
i1 .   25    600  999
i1 .   11    600  1041

i12 23  20   28 240 .6 ;gong's spectrum(without attack)
i12 .   .    29 274 .
i12 .   .    18 385 .
i12 .   .    17 611 .
i12 .   .    16 329 .
i12 .   .    25 661 .  
i12 .   .    .  810 .
i12 .   .    12 911 .
i12 .   .    14 835 .

i12 35.5 4 30  243 .35 ;gong's spectrum
i12 .    . 29  271 .
i12 .    . 19  380 .
i12 .    . 17  601 .
i12 .    . 16  329 .
i12 .    . 25  661 .  
i12 .    . .   800 .
i12 .    . 22  918 .
i12 .    . 18  845 .

i32 27   23 54 6.02  .5      ;  recitativo 1
i32 27.1 23 53 6.02  .

i13 49 15    1300  1 ;gong's part2
   
i1 49  28    2700  240 ;gong's part1
i1 .   28    2500  274 
i1 .   19    2000  387 
i1 .   8.6   3000  601 
i1 .   17.0  1000  339
i1 .   13.2   .    665     
i1 .   11.0   .    810
i1 .   9.5   900   900
i1 .   19.9  800   837

i13 49.5 10  1100  1 ;gong' part2
  
i1 49.5 28   2000  241.25;  gong's part1
i1 .    28   1500  262.25
i1 .    13   1600  375.5
i1 .    18.2  500  302.5
i1 .    25.4    .  315
i1 .    19.6    .  385
i1 .    16.4    .  482.5
i1 .    10.5  900  900
i1 .    18.1  800  837

i4 35.8 20    3  11.02  .2 ;percussion 1
i4 52   27    12 11.02  .2
i4 52.5 27    11 11.04  .9

 i2 64  .25  51  6.02  .4;bass string
 i2 +  1.75  49  6.02  .4
 i2 66  .25  51  6.02  .4
 i2 +  1.75  49  6.02  .4 
 i2 68   .25 52  6.02  .4;bass string
 i2 +  1.75  50  6.02  .4
 i2 70  .25  52  6.02  .4
 i2 +  1.75  50  6.02  .4
 i2 72  .25  52  6.02  .4
 i2 +  1.75  50  6.02  .4
 i2 74  .25  53  6.02  .4;bass string
 i2 +  1.75  51  6.02  .4
 i2 76  .25  54  6.02  .4;bass string
 i2 +  1.75  52  6.02  .4
 i2 78  .25  55  6.02  .4
 i2 +  1.75  53  6.02  .4
  
 i2 71  1 54 11.02   1;glock
 i2  .  1 .  11.025  1
 i2  .  1 .  11.0315 1

 i2 73  1 54 11.02   .99;glock
 i2  .  1 .  11.025  .99
 i2  .  1 .  11.0315 .99
  
 i2 75  1 54  11.02  .98;glock
 i2  .  1 .  11.025  .
 i2  .  1 .  11.0315 .
 
 i2 77  1 54  11.02  .97;glock
 i2  .  1 .  11.025  .97
 i2  .  1 .  11.0315 .97
 
 i2 79  1 54  11.02  .96;glock
 i2  .  1 .  11.025  .96
 i2  .  1 .  11.0315 .96

  s;                                  section 2

 i2 0   .25 55  6.02  .4;bass (pulse)
 i2 +  1.75 53  6.02  .4
 i2 2  .25  55  6.02  .4
 i2 +  1.75 53  6.02  .4 
 i2 4   .25 55  6.02  .4;bass 
 i2 +  1.75 53  6.02  .4
 i2 6  .25  55  6.02  .4
 i2 +  1.75 53  6.02  .4
 i2 8  .25  56  6.02  .4
 i2 +  1.75 54  6.02  .4
 i2 10  .25 56  6.02  .4;bass
 i2 +  1.75 54  6.02  .4
 i2 12  .25 58  6.02  .4;bass
 i2 +  1.75 56  6.02  .4
 i2 14  .25 58  6.02  .4;bass 
 i2 +  1.75 56  6.02  .4
 i2 16  .25 59  6.02  .4;bass 
 i2 +  1.75 57  6.02  .4
 i2 18  .25 60  6.02  .4
 i2 + 1.75  58  6.02  .4
 i2 20  .25 61  6.02  .4
 i2 +  1.75 59  6.02  .4
 i2 22  .25 62  6.02  .4
 i2 +  1.75 60  6.02  .4;bass pulse
 i2 24  .25 63  6.02  .4
 i2 +  1.75 61  6.02  .4;bass pulse 
 i2 26  .25 64  6.02  .4
 i2 +  1.75 62  6.02  .4;bass pulse
 i2 28  .25 64  6.02  .4
 i2 +  1.75 62  6.02  .4;bass pulse 
 i2 30  .25 65  6.02  .4
 i2 +  0.75 63  6.02  .4;bass pulse
 
         ;glock
 i2  1  1 54 11.02  .94
 i2  .  1 .  11.025 .94
 i2  .  1 .  11.0315 .94

 i2  3  1 54 11.02 .93 ;glock
 i2  .  1 .  11.025 .93
 i2  .  1 .  11.0315 .93
  
 i2 5   1 54  11.02 .92 ;glock
 i2  .  1 .  11.025 .92
 i2  .  1 .  11.0315 .92
 
 i2 5.5 1 54  11.02 .91 ;glock
 i2  .  1 .  11.025 .91
 i2  .  1 .  11.0315 .91
  
 i2  7  1 55  11.02 .90 ;glock
 i2  .  1 .  11.025 .90
 i2  .  1 .  11.0315 .90

 i2  9  1 56  11.02 .89 ;glock
 i2  .  1 .  11.025 .89
 i2  .  1 .  11.0315 .89
 
 i2 9.5 1 56  11.02 .88 ;glock
 i2  .  1 .  11.025 .88
 i2  .  1 .  11.0315 .88

 i2 11  1 56  11.02  .87 ;glock
 i2  .  1 .  11.025 .87
 i2  .  1 .  11.0315 .87

 i2 13  1 56  11.02 .86 ;glock
 i2  .  1 .  11.025 .86
 i2  .  1 .  11.0315 .86

 i2 15  1 57 11.02  .85 ;glock
 i2  .  1 .  11.025  .85
 i2  .  1 .  11.0315 .85

i2 15.5 1 56 11.02   .84 ;glock
 i2  .  1 .  11.025  .84
 i2  .  1 .  11.0315 .84

 i2 17  1 58 11.02   .83 ;glock
 i2  .  1 .  11.025  .83
 i2  .  1 .  11.0315 .83

 
 i2 19  1 58  11.02  .82 ;glock
 i2  .  1 .   11.025 .82
 i2  .  1 .  11.0315 .82

 i2 21  1 58  11.02   .81 ;glock
 i2  .  1 .   11.025  .81
 i2  .  1 .   11.0315 .81

i2 21.5 1 57  11.02   .80 ;glock
 i2  .  1 .   11.025  .80
 i2  .  1 .   11.0315 .80

 i2 23  1 58 11.02   .79;glock
 i2  .  1 .  11.025  .79
 i2  .  1 .  11.0315 .79

 i2 25  1 58  11.02   .78;glock
 i2  .  1 .   11.025  .78
 i2  .  1 .   11.0315 .78

 i2 27  1 58  11.02   .77;glock
 i2  .  1 .   11.025  .77
 i2  .  1 .   11.0315 .77

 i2 29  1 58  11.02  .76;glock
 i2  .  1 .   11.025 .76
 i2  .  1 .  11.0315 .76

 
 i31 0 25 37 6.02   .1 ;strange kind of sitar
 i31 2 23 37 6.0201 .9
 i31 6 25 43 6.02   .8
 i31 8 23 43 6.022  .2                
  
    s               ; section 3  
  
 i13 0  10   1700  1 ;gong's part2

i1 0   25   2700 243 0;gong's part1
i1 .   25   2500 274 .
i1 .   19   2300 385 .
i1 .   8.6  3000 611 .
i1 .   17.0 1200 329 .
i1 .   13.2   .  661 .   
i1 .   11.0   .  810 . 
i1 .   9.5  1000 911 . 
i1 .   19.9  800 835 .

i13 .5  7    1500  1 ;g.p.2

i1 .5  25   2400  241.4  1 ; gong's part1
i1 .   25   1900  262.25 .
i1 .   13   2000  375.5  .
i1 .  18.2  1500  304.5  .
i1 .  25.4   700  315    .
i1 .  19.6     .  385    .
i1 .  16.4     .  482.5  .
i1 .   10.5  900  900    .
i1 .   18.1  800  837    .

i13 2.5 10    1500  1 ;g.p.2

i1 2.5 25   2400 242 ;gong's part1
i1 .   25   2100 274 
i1 .   19   1900 383 
i1 .   8.6  1985 611 
i1 .   17.0 1020 329 
i1 .   13.2   .  667     
i1 .   11.0   .  812 
i1 .   9.5   910 911 
i1 .   19.9  804 845 

i11 8   17   2400 240  .3 ;crescendo of the gong's spectrum
i11 .   .    2100 274  .
i11 .   .    1900 385  .
i11 .   .    2000 611  .
i11 .   .    1100 329  .
i11 .   .    1000 661  .   
i11 .   .    .    810  .
i11 .   .    900  911  .
i11 .   .    800  835  .

i33 24.8   38 62 6.02   .3; recitativo 2
i33 25     38 62 6.0201 .3


i12 37  9   40  240 .9 ;gong's spectrum
i12 .   .   39  274 .1
i12 .   .   26  385 .7
i12 .   .   21  611 .3
i12 .   .   18  329 .5
i12 .   .   18  661 .4  
i12 .   .   .   810 .3
i12 .   .   18  911 .8
i12 .   .   13  835 .2

i4  15   27 6 11.02    .1           ;    percussion
i4  23.5 10 9 11.04    .8
i41 37   30 9 12.0201  .9             ;another percussion 
i4  55   25 6 11.0201  .2
i41 57   34 9 11.02    .8

   i3 52 26  60  8.02  .7;  vox 3

 i2 32  .25  52  6.02  .4;bass pulse
 i2 +  1.75  50  6.02  .4
 i2 34  .25  52  6.02  .4
 i2 +  1.75  50  6.02  .4
 i2 36  .25  52  6.02  .4
 i2 +  1.75  50  6.02  .4
 i2 38  .25  52  6.02  .4;bass 
 i2 +  1.75  50  6.02  .4
 i2 40  .25  52  6.02  .4;bass 
 i2 +  1.75  50  6.02  .4
 i2 42  .25  52  6.02  .4;bass 
 i2 +  1.75  50  6.02  .4
 i2 44   .25 53  6.02  .4;bass 
 i2 +  1.75  51  6.02  .4
 i2 46  .25  54  6.02  .4
 i2 +  1.75  52  6.02  .4
 i2 48  .25  55  6.02  .4
 i2 +  1.75  53  6.02  .4
 i2 50  .25  56  6.02  .4;bass 
 i2 +  1.75  54  6.02  .4
 i2 52  .25  56  6.02  .4;bass 
 i2 +  1.75  54  6.02  .4
 i2 54  .25  58  6.02  .4;bass 
 i2 +  1.75  56  6.02  .4
 i2 56  .25  57  6.02  .4;bass 
 i2 +  1.75  55  6.02  .4
 i2 58   .25 57  6.02  .4;bass 
 i2 +  1.75  55  6.02  .4
 i2 60  .25  57  6.02  .4
 i2 +  1.75  55  6.02  .4
 i2 62  .25  57  6.02  .4
 i2 +  1.75  55  6.02  .4
 i2 64  .25  57  6.02  .4;bass 
 i2 +  1.75  55  6.02  .4
 i2 66  .25  58  6.02  .4;bass 
 i2 +  1.75  56  6.02  .4
 i2 68  .25  58  6.02  .4;bass 
 i2 +  1.75  56  6.02  .4
 i2 70  .25  59  6.02  .4;bass 
 i2 +  1.75  57  6.02  .4
 i2 72  .25  59  6.02  .4;bass 
 i2 +  1.75  57  6.02  .4
 i2 74  .25  59  6.02  .4;bass 
 i2 +  1.75  57  6.02  .4
 i2 76  .25  61  6.02  .4;bass 
 i2 +  1.75  59  6.02  .4
 i2 78  .25  59  6.02  .4;bass 
 i2 +  1.75  57  6.02  .4
 i2 80  .25  59  6.02  .4;bass 
 i2 +  1.75  57  6.02  .4
 i2 82  .25  59  6.02  .4;bass 
 i2 +  1.75  57  6.02  .4
 i2 84  .25  59  6.02  .4;bass 
 i2 +  1.75  57  6.02  .4
 i2 86  .25  59  6.02  .4;bass 
 i2 +  1.75  57  6.02  .4
 i2 88  .25  59  6.02  .4;bass 
 i2 +  1.75  57  6.02  .4
 i2 90  .25  59  6.02  .4;bass 
 i2 +  1.75  57  6.02  .4
 i2 92  .25  59  6.02  .4;bass 
 i2 +  1.75  57  6.02  .4
 i2 94  .25  60  6.02  .4;bass 
 i2 +  1.75  58  6.02  .4
 i2 96  .25  60  6.02  .4;bass 
 i2 +  1.75  58  6.02  .4
 i2 98  .25  60  6.02  .4;bass 
 i2 +  1.75  58  6.02  .4
 i2 100 .25  60  6.02  .4;bass 
 i2 +  1.75  58  6.02  .4
 i2 102 .25  60  6.02  .4;bass 
 i2 +  1.75  58  6.02  .4
 i2 104 .25  60  6.02  .4;bass 
 i2 +  1.75  58  6.02  .4
 i2 106 .25  60  6.02  .4;bass 
 i2 +  1.75  58  6.02  .4
 i2 108 .25  61  6.02  .4;bass 
 i2 +  1.75  59  6.02  .4
 i2 110 .25  60  6.02  .4;bass(string)
 i2 +  1.75  58  6.02  .4
 i2 112 .25  59  6.02  .4;bass 
 i2 +  1.75  57  6.02  .4
 i2 114 .25  59  6.02  .4;bass 
 i2 +  1.75  57  6.02  .4
 i2 116 .25  59  6.02  .4;bass 
 i2 +  1.75  57  6.02  .4

i35 68   9 54 6.02  .5  ; recitativo3
i35 69.5 . 55 .     .4
i35 74   . 56 .     .2
i35 76   . 57 .     .6
i35 78   . 59 .     .3
i35 79.5 . 59 .     .7
i35 83   . 60 .     .2
i35 84.5 . 61 .     .6
i35 87.5 . 63 .     .7   
i35 89   . 65 .     .4
i35 91   . 67 .     .3
i35 91.5 . 67 .     .6
i35 95   . 66 .     .5
i35 95.5 . 66 .     .4
i35 96   . 66 .     .7
i35 101  . 63 .     .5  ; recitativo3

 i36 96  16.9  68  7.02  .7 0 ;vox(horn1)
 
 i31 90 23 35  6.02 .7 ; strange kind of sitar

i4 55 8 4 11.02  .2 ;percussion
i4 59 2.5 13  .  .
i4 63 . . .      . 
i4 65 . . .      .3
i4 67 . . .      . 
i4 69 . . .      .
i4 71 . . .      .2
i4 73 . . .      .3
i4 73.5 . . .    .3
i4 75 . 14 .     .
i4 77 . . .      .2
i4 79 . . .      .2          
i4 81 . . .      . 
i4 83 . . .      .1
i4 83.5 . . .    .3
i4 85 4 . .      .2
i4 87 2 . .      .3      
i4 87.5 . . .    .1
i4 89 . 15 .     .2
i4 89.5 . . .    .4
i4 91 . . .      .3
i4 91.5 . . .    .7
i4 93 . . .      .3
i4 93.5 . . .    .7
i4 95 . . .      .3
i4 95.5 . . .    .7
i4 97 . . .      .3
i4 97.5 . . .    .7
i4 99 . . .      .3
i4 99.5 . . .    .7
i4 101  . . .    .3
i4 101.5 . . .   .7
i4 103 . . .     .3
i4 103.5 . . .   .7
i4 105 . . .     .3
i4 105.5 . . .   .7
i4 107 . . .     .3
i4 107.5 . . .   .7
i4 109   8 5 11.02  .3
i4 109.5 6 3 11.04  .7 ; percussion

i2 111  1 58 11.02   .75;glock
 i2  .  1 .  11.025  .75
 i2  .  1 .  11.0315 .75

 i2 113 1 59 11.02  .74;glock
 i2  .  1 .  11.025  .74
 i2  .  1 .  11.0315 .74

i2 115  1 59 11.02   .73;glock
 i2  .  1 .  11.025  .73
 i2  .  1 .  11.0315 .73

 i2 117 1 59 11.02   .72;glock
 i2  .  1 .  11.025  .72
 i2  .  1 .  11.0315 .72

   s ;section 4


i12 0   4   44  240 .4 ;gong's spectrum
i12 .   .   44  274 .
i12 .   .   30  385 .5
i12 .   .   29  611 .
i12 .   .   25  329 .7
i12 .   .   21  661 .   
i12 .   .   .   810 .4
i12 .   .   19  911 .5
i12 .   .   18  835 .6

 i2 0   .25 60  6.02  .4;bass pulse
 i2 +  1.75 58  6.02  .4
 i2 2   .25 60  6.02  .4
 i2 +  1.75 58  6.02  .4
 i2 4   .25 60  6.02  .4
 i2 +  1.75 58  6.02  .4
 i2 6   .25 61  6.02  .4
 i2 +  1.75 59  6.02  .4
 i2 8   .25 61  6.02  .4
 i2 +  1.75 59  6.02  .4
 i2 10  .25 61  6.02  .4
 i2 +  1.75 59  6.02  .4
 i2 12  .25 61  6.02  .4
 i2 +  1.75 59  6.02  .4
 i2 14  .25 62  6.02  .4
 i2 +  1.75 60  6.02  .4
 i2 16  .25 62  6.02  .4
 i2 +  1.75 60  6.02  .4
 i2 18  .25 63  6.02  .4
 i2 +  1.75 61  6.02  .4
 i2 20  .25 62  6.02  .4
 i2 +  1.75 60  6.02  .4
 i2 22  .25 62  6.02  .4
 i2 +  1.75 60  6.02  .4
 i2 24  .25 62  6.02  .4
 i2 +  1.75 60  6.02  .4
 i2 26  .25 63  6.02  .4
 i2 +  1.75 61  6.02  .4
 i2 28  .25 62  6.02  .4
 i2 +  1.75 60  6.02  .4
 i2 30  .25 62  6.02  .4
 i2 +  1.75 60  6.02  .4
 i2 32  .25 62  6.02  .4
 i2 +  1.75 60  6.02  .4
 i2 34  .25 63  6.02  .4
 i2 +  1.75 61  6.02  .4
 i2 36  .25 62  6.02  .4
 i2 +  1.75 60  6.02  .4
 i2 38  .25 62  6.02  .4
 i2 +  1.75 60  6.02  .4
 i2 40  .25 62  6.02  .4
 i2 +  1.75 60  6.02  .4
 i2 42  .25 63  6.02  .4
 i2 +  1.75 61  6.02  .4
 i2 44  .25 62  6.02  .4
 i2 +  1.75 60  6.02  .4
 i2 46  .25 62  6.02  .4
 i2 +  1.75 60  6.02  .4
 i2 48  .25 63  6.02  .4
 i2 +  1.75 61  6.02  .4
 i2 50  .25 62  6.02  .4
 i2 +  1.75 60  6.02  .4
 i2 52  .25 62  6.02  .4
 i2 +  1.75 60  6.02  .4
 i2 54  .25 62  6.02  .4
 i2 +  1.75 60  6.02  .4
 i2 56  .25 63  6.02  .4
 i2 +  1.75 61  6.02  .4
 i2 58  .25 64  6.02  .4
 i2 +  1.75 62  6.02  .4
 i2 60  .25 64  6.02  .4
 i2 +  1.75 62  6.02  .4
 i2 62  .25 64  6.02  .4
 i2 +  1.75 62  6.02  .4
 i2 64  .25 65  6.02  .4
 i2 +  1.75 63  6.02  .4
 i2 66  .25 65  6.02  .4
 i2 +  1.75 63  6.02  .4
 i2 68  .25 66  6.02  .4
 i2 +  1.75 64  6.02  .4
 i2 70   .5 66  6.02  .4
 i2 +    .5 65  6.02  .6
 i2 +    .  66  6.02  .4
 i2 +    .  67  6.02  .6
 i2 72   .5 67  6.02  .4
 i2 +    .   .   .    .6
 i2 73   .5 68  6.02  .4
 i2 +    .   .   .    .6
 i2 74   .5 69  6.02  .4
 i2 +    .   .   .    .6
 i2 75   .5 69  6.02  .4
 i2 +    .   .   .    .6
 i2 76   .5 70  6.02  .4
 i2 +    .   .   .    .6
 i2 77   .5 71  6.02  .4
 i2 +    .   .   .    .6
 i2 78   .5 72  6.02  .4
 i2 +    .   .   .    .6
 i2 79   .5 73  6.02  .4
 i2 +    .   .   .    .6  ;bass pulse
 

 i2  1  1 59 11.02  .72;glock
 i2  .  1 .  11.025 .72
 i2  .  1 .  11.0315 .72

 i2  1.5 1 59 11.02  .70;glock
 i2  .  1 .  11.025 .70
 i2  .  1 .  11.0315 .70

 i2  3  1 59 11.02  .68;glock
 i2  .  1 .  11.025 .68
 i2  .  1 .  11.0315 .68

 i2  5  1 59  11.02 .66;glock
 i2  .  1 .  11.025 .66
 i2  .  1 .  11.0315 .66
 
 i2 5.5 1 59 11.02  .64;glock
 i2  .  1 .  11.026 .64
 i2  .  1 .  11.0315 .64

 
 i2  7  1 59 11.02 .62;glock
 i2  .  1 .  11.025 .62
 i2  .  1 .  11.0315 .62
 
 
 i2  9  1 59  11.02 .61;glock
 i2  .  1 .  11.025 .61
 i2  .  1 .  11.0315 .61

 i2 9.5 1 59  11.02 .61;glock
 i2  .  1 .  11.025 .61
 i2  .  1 .  11.0315 .61 
 
 i2 11  1 59  11.02 .60;glock
 i2  .  1 .  11.025 .60
 i2  .  1 .  11.0315 .60
 
 
 i2 13  1 59 11.021 .59;glock
 i2  .  1 .  11.025 .59
 i2  .  1 . 11.0315 .59
 
 i2 15  1 59 11.021 .58;glock
 i2  .  1 .  11.025 .58
 i2  .  1 .  11.0315 .58


i2 15.5 1 59 11.021 .57;glock
 i2  .  1 .  11.025 .57
 i2  .  1 .  11.0315 .57

 i2 17  1 61 11.021 .56;glock
 i2  .  1 .  11.025 .56
 i2  .  1 .  11.0315 .56
 
i2 17.5 1 60 11.021 .55;glock
 i2  .  1 .  11.025 .55
 i2  .  1 .  11.0315 .55
 

 i2 19  1 61 11.021 .54;glock
 i2  .  1 .  11.025 .54
 i2  .  1 .  11.0315 .54 


 i2 21  1 61 11.021 .53;glock
 i2  .  1 .  11.025 .53
 i2  .  1 .  11.0315 .53

 i2 23  1 61 11.021 .52;glock
 i2  .  1 .  11.025 .52
 i2  .  1 .  11.0315 .52
 
i2 23.5 1 61 11.021 .51;glock
 i2  .  1 .  11.025 .51
 i2  .  1 .  11.0315 .51
 

 i2 25  1 61 11.021 .50;glock
 i2  .  1 .  11.025 .50
 i2  .  1 .  11.0315 .50 


 i2 27  1 61 11.021 .49;glock
 i2  .  1 .  11.025 .49
 i2  .  1 .  11.0315 .49

 i2 29  1 61 11.021 .48;glock
 i2  .  1 .  11.025 .48
 i2  .  1 .  11.0315 .48
 
i2 29.5 1 61 11.021 .47;glock
 i2  .  1 .  11.025 .47
 i2  .  1 .  11.0315 .47

 i2 31  1 61 11.021 .46;glock
 i2  .  1 .  11.025 .46
 i2  .  1 .  11.0315 .46 

 i2 33  1 62 11.021 .45;glock
 i2  .  1 .  11.025 .45
 i2  .  1 .  11.0315 .45

 i2 35  1 61 11.021 .45;glock
 i2  .  1 .  11.025 .45
 i2  .  1 .  11.0315 .45 

 i2 37  1 62 11.021 .44;glock
 i2  .  1 .  11.025 .44
 i2  .  1 .  11.0315 .44

 i2 39  1 61 11.021 .43;glock
 i2  .  1 .  11.025 .43
 i2  .  1 .  11.0315 .43 

 i2 41  1 62 11.021 .42;glock
 i2  .  1 .  11.025 .42
 i2  .  1 .  11.0315 .42

 i2 43  1 61 11.021 .41;glock
 i2  .  1 .  11.025 .41
 i2  .  1 .  11.0315 .41 

 i2 45  1 62 11.021 .40;glock
 i2  .  1 .  11.025 .40
 i2  .  1 .  11.0315 .40
 
 i2 47  1 61 11.021 .39;glock
 i2  .  1 .  11.025 .39
 i2  .  1 .  11.0315 .39 

 i2 49  1 62 11.021 .38;glock
 i2  .  1 .  11.025 .38
 i2  .  1 .  11.0315 .38

 i2 51  1 61 11.021 .37;glock
 i2  .  1 .  11.025 .37
 i2  .  1 .  11.0315 .37 

 i2 53  1 62 11.021 .36;glock
 i2  .  1 .  11.025 .36
 i2  .  1 .  11.0315 .36

 i2 55  1 61 11.021 .34;glock
 i2  .  1 .  11.025 .34
 i2  .  1 .  11.0315 .34 

 i2 57  1 62 11.021 .33;glock
 i2  .  1 .  11.025 .33
 i2  .  1 .  11.0315 .33
 
 i2 59  1 61 11.021 .32;glock
 i2  .  1 .  11.025 .32
 i2  .  1 .  11.0315 .32 

 i2 61  1 62 11.021 .31;glock
 i2  .  1 .  11.025 .31
 i2  .  1 .  11.0315 .31

 i2 63  1 61 11.021 .30;glock
 i2  .  1 .  11.025 .30
 i2  .  1 .  11.0315 .30 

 i2 65  1 62 11.021 .28;glock
 i2  .  1 .  11.025 .28
 i2  .  1 .  11.0315 .28

 i2 67  1 62 11.021 .27;glock
 i2  .  1 .  11.025 .27
 i2  .  1 .  11.0315 .27

  i31 2 25 30 6.02  .8 ;strange kind of sitar
  i31 4 23 30 6.024 .2  

i4 9   6   5  11.0203 .7 ;percussion
i4 11  3   9  11.02   .3
i4 13  .   .  .       .7
i4 15  .   .  .       .3
i4 17  .   .  .       .7
i4 19  .   .  .       .3
i4 21  2.5 10 .       .7
i4 23  .   .  .       .3
i4 25  .   .  .       .7
i4 27  .   11 11.00   .3
i4 29  .   .  .       .7
i4 31  .   .  .       .3
i4 33  .   12 12.00   .6
i4 35  .   .  .       .2
i4 37  6   .  12.02   .7
i4 39 2.5  12 11.02   .2
i4 39.5 .   .  .      .8
i4 41   .   .  .      .1
i4 41.5 .   .  .      .3
i4 43   .   12 .      .7
i4 45   .   .  .      .4
i4 45.5 .   .  .      .8
i4 47   .   .  .      .6
i4 47.5 .   .  .      .3
i4 49   .   .  .      .6
i4 49.5 .   .  .      .3
i4 51   .   .  .      .7
i4 51.5 .   .  .      .2
i4 53   .   13 .      .7
i4 53.5 .   .  .      .3
i4 55   .   .  .      .7
i4 55.5 10  . 11.09   .1
i4 55.5 2.5 . 11.02   .3
i4 57  .    .  .      .7
i4 57.5 .   14 11.02  .1
i4 59   .   .  .      .7  
i4 59.5 .   .  .      .2
i4 61   .   .  .      .7
i4 61   10  14 11.06  .2
i4 63   2.5 .  11.02  .7
i4 63.5 2.5 .  11.02  .3
i4 65   .   .   .     .6
i4 65.5 .   15  .     .2
i4 67   .   .   .     .4
i4 67.5 .   .   .     .8
i4 69   .   .   .     .2
i4 69.5 .   .   .     .7
i4 70   10  15  10.09 .3
i4 70  2.5  .   11.02 .7
i4 70.5 .   .   .     .3
i4 71   .   .   .     .7
i4 71.5 .   15  .     .9
i4 73   .   .   .     .1
i4 73.5 .   .   .     .8
i4 75   .   15  .     .2
i4 75.5 .   .   .     .7
i4 75.5 6   .   11.04 .3
i4 76   .   .   .     .6
i4 76.5 .   .   .     .4
i4 77   .   .   .     .8
i4 77.5 .   .   .     .2
i4 78   .   .   .     .9
i4 79   .   .   .     .1
i4 79.5 .   .   .     .73
i4 80   36  16  .     .13
i4 80.5 35  16  11.05 .68 ;percussion

i36 2 16.9 54  7.02  .45 1;vox(horn2)

i36 26 16.9 65  7.02  .8 0;vox proposta(horn1)
i36 28 16.9 63  7.02  .2 0;risposta .
i36 30 16.9 59  7.02  .7 1;risposta (horn2)
i36 32 16.9 55  7.02  .1 0;
i36 34 16.9 49  7.02  .2 0;
i36 34 16.9 32  7.07  .6 0;in quarta

i35 16   9 40 6.02   .5 ; recitativo3
i35 17.5 . 40  .     .
i35 21   . 40  .     .
i35 25   . 40  .     .
i35 26.5 . 40  .     .2
i35 27.5 . 40  .     .6
i35 31   . 40  .     .
i35 34   .  .  .     .4
i35 36   .  .  .     .
i35 36.5 . 40  .     .6
i35 38.5 .  .  .     .4
i35 39.5 . 43  .     .
i35 40   . 44  .     .7
i35 40.5 . 44  .     .3
i35 41.5 . 45  .     .4
i35 42   . 46  .     .7
i35 42.5 . 46  .     .8
i35 43   . 48  .     .3
i35 43.5 . 49  .     .1
i35 44   . 50  .     .5
i35 44.5 . 51  6.021 .7
i35 45   . 51  6.02  .3
i35 45.5 . 53  .     .7
i35 46   . 54  .     .4
i35 46.5 . 55  .     .8
i35 47   . 56  .     .3
i35 47.5 . 57  .     .8
i35 48   . 58  .     .6
i35 48.5 . 59  6.0205 .5
i35 49   . 59  .      .8
i35 49.5 . 59  .      .2
i35 50   . 59  6.021  .9
i35 50.1 . .   6.02   .4
i35 51   . .   .      .6

 i31 27 25 38 6.02  .8 ;strange kind of sound
 i31 29 23 38 6.027 .2  
 i31 32 25 38 6.02  .7
 i31 34 23 38 6.023 .3

i11 48.5 35  500 240 .9 ;crescendo
i11 .    .   500 274 .8
i11 .    .   200 385 .7
i11 .    .   200 611 .5
i11 .    .   100 329 .6
i11 .    .   .   661 .4   
i11 .    .   .   810 .2
i11 .    .   90  911 .6
i11 .    .   80  835 .7

 i13 51   10  1300 1 ;g.p.2
 
i1 51  10    2000 240 ;gong's part1 
i1 .   10    2000 274 
i1 .   4     1800 387 
i1 .   4     1000 601 
i1 .   6     1000 339
i1 .   2     .    665     
i1 .   7     .    810
i1 .   3     900  900

 i13 51.5 6   1300 1 ;g.p.2

i1 51.5 10    1900 241 ;gong's part1 
i1 .    10    1900 274 
i1 .    4     1800 388 
i1 .    4     1000 611 
i1 .    6     1000 336
i1 .    2     .    665     
i1 .    7     .    804
i1 .    3     900  900


 i13 52.5   .   1300 . ;g.p.2

i1 52.5 20    1900 241 ;gong's part1 
i1 .    10    1900 274 
i1 .    2     2000 387 
i1 .    8     1400 600 
i1 .    6     1400 349
i1 .    15    .    665     
i1 .    7     .    812
i1 .    2     900  910


 i11 60  30   1000 402 1 ;crescendo
 i11 .    .   1000 274 1
 i11 .    .   1000 385 1
 i11 .    .   1000 611 1
 i11 .    .   1000 329 1
 i11 .    .   .    661 1   
 i11 .    .   .    810 1
 i11 .    .   990  911 1
 i11 .    .   980  835 1


i37 50    31 67  7.02   .4 ;recitativo4
i37 50.1  .  56  .      .6
i37 53    .  60  6.02   .4
i37 .     .  60  6.0201 .7
i37 .     .  60  6.0222 .3
i37 53.07 .  60  6.05   .7

 i38 63.6    10 63 6.02 .6 ;last word
 i38 63.61   10 70 7.02 .4

  i13 80 15    1500 1 ;gong's part2

i1 80  24    2540 241 ;gong's part1  
i1 .   24    2400 274 
i1 .   24    2000 387 
i1 .   24    3000 601 
i1 .   6     1800 339
i1 .   4     .    665     
i1 .   24    1300 810
i1 .   3     900  900
i1 .   8     800  837
i1 .   14    600  999
i1 .   11    600  1041

 i13 80.5 15 1600 1 ;g.p.2

i1 80.5 27    2300  241.25;  gong's part1
i1 .    27    2000  262.25
i1 .    10    2000  375.5
i1 .    18.2   500  302.5
i1 .    27     .    315
i1 .    6      .    385
i1 .    14     .    482.5
i1 .    26    900   900
i1 .    27    800   837


 i21 105.5 10 76 11.02    ; bow-string
 i21  .    .  .  11.025   
 i21  .    .  .  11.0315  

 i2 116.5   3  62 11.02    .5   ;glock
 i2  .      2  .  11.025   .54
 i2  .      1  .  11.0315  .45
 
e   





 

</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>1280</x>
 <y>61</y>
 <width>396</width>
 <height>580</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>0</r>
  <g>0</g>
  <b>0</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
<MacGUI>
ioView nobackground {0, 0, 0}
</MacGUI>
