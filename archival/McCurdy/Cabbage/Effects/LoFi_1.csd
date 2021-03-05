; LoFi.csd
; Written by Iain McCurdy, 2012.

<Cabbage>
form size(230, 120), caption("Lo Fi"), pluginID("lofi"), scrollbars(0)
image pos(0, 0), size(230, 120), colour(0,0,0), shape("sharp")
image bounds(0,0,0,0), shape("ellipse"), widgetarray("boxes",276)
rslider bounds(  5, 31, 80, 80), text("Bits"), channel("bits"), range(1, 16, 16), textcolour("white"),colour("orange"), trackercolour("brown")
image   bounds( 30, 94, 30, 15), shape("rounded"), colour("black")
rslider bounds( 75,  7, 80, 80), text("Foldover"), channel("fold"), range(1, 1024, 0, 0.25), textcolour("White"),colour("orange"), trackercolour("brown")
image   bounds( 85, 70, 60, 15), shape("rounded"), colour("black")
rslider bounds(145, 31, 80, 80), text("Level"), channel("level"), range(0, 1.00, 1), textcolour("White"),colour("orange"), trackercolour("brown")
image   bounds(165, 94, 40, 15), shape("rounded"), colour("black")
}
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-d -n
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 32
nchnls = 2
0dbfs = 1

;Iain McCurdy, 2012
;http://iainmccurdy.org/csound.html


opcode	LoFi,a,akk
	ain,kbits,kfold	xin									;READ IN INPUT ARGUMENTS
	kvalues		pow		2, kbits					;RAISES 2 TO THE POWER OF kbitdepth. THE OUTPUT VALUE REPRESENTS THE NUMBER OF POSSIBLE VALUES AT THAT PARTICULAR BIT DEPTH
	aout		=	(int((ain/0dbfs)*kvalues))/kvalues	;BIT DEPTH REDUCE AUDIO SIGNAL
	aout		fold 	aout, kfold							;APPLY SAMPLING RATE FOLDOVER
		xout	aout									;SEND AUDIO BACK TO CALLER INSTRUMENT
endop

instr 1

 ; COSMETIC NONSENSE
 icount0	=	1		; ROW LOOP
 loop0:
 icount		=	1		; COLUMN LOOP
 loop:
 Smsg		sprintf	"bounds(%d,%d,10,10), colour(%d,%d,%d,150)",(icount-1)*10,(icount0-1)*10,rnd(255),rnd(255),rnd(255)
 Schn		sprintf	"boxes_ident%d",icount + ((icount0-1)*23)
 		chnset	Smsg,Schn
 loop_le	icount,1,23,loop	; ROW LOOP
 loop_le	icount0,1,12,loop0	; COLUMN LOOP
 
 
kbits chnget "bits"
kfold chnget "fold"
klevel chnget "level"
a1,a2	ins
kporttime	linseg	0,0.001,0.01
kfold	portk	kfold,kporttime
a1	LoFi	a1,kbits*0.6,kfold
a2	LoFi	a2,kbits*0.6,kfold
a1	=	a1 * klevel
a2	=	a2 * klevel
	outs	a1,a2
endin

</CsInstruments>

<CsScore>
i 1 0 [60*60*24*7]
</CsScore>

</CsoundSynthesizer>