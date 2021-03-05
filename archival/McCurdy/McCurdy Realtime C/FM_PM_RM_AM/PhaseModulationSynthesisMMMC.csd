PhaseModulationSynthesisMMMC.csd
Written by Iain McCurdy, 2009
modulator -> modulator -> modulator -> carrier

<CsoundSynthesizer>

<CsOptions>
-odac -Ma -+rtmidi=virtual -dm0
</CsOptions>


<CsInstruments>

sr	=	44100
ksmps	=	32
nchnls	=	2
0dbfs	=	1	;MAXIMUM AMPLITUDE = 1, REGARDLESS OF BIT DEPTH

;FLTK INTERFACE CODE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
FLcolor	255, 255, 255, 0, 0, 0
;		LABEL                                                       | WIDTH | HEIGHT | X | Y
	FLpanel	"Phase Modulation Synthesis: mod.1->mod.2->mod.3->carrier",    500,    550,    0,  0

;                                               	ON | OFF | TYPE | WIDTH | HEIGHT | X | Y | OPCODE | INS | STARTTIM | IDUR
gkOnOff,ihOnOff	FLbutton	"On/Off(MIDI)",		1,    0,    22,    140,     25,    5,  5,    0,      2,      0,      -1
FLsetColor2	255, 255, 50, ihOnOff		;SET SECONDARY COLOUR TO YELLOW

;VALUE DISPLAY BOXES					WIDTH | HEIGHT | X |  Y
idbasefreq			FLvalue	" ",     	60,       20,    5,   75
idindex1			FLvalue	" ",     	60,       20,    5,  125
idindex2			FLvalue	" ",     	60,       20,    5,  175
idindex3			FLvalue	" ",     	60,       20,    5,  225
idCarAmp			FLvalue	" ",     	60,       20,    5,  375
idChoDep			FLvalue	" ",     	60,       20,    5,  425
idChoRte			FLvalue	" ",     	60,       20,    5,  475
idChoMix			FLvalue	" ",     	60,       20,    5,  525

;SLIDERS				            				MIN  |   MAX | EXP | TYPE |   DISP     | WIDTH | HEIGHT | X | Y
gkbasefreq, ihbasefreq		FLslider 	"Base Frequency",		20,    20000,  -1,    23,  idbasefreq,    490,     25,    5,  50
gkindex1, ihindex1		FLslider 	"Modulation Index 1",		0,        10,   0,    23,  idindex1,      490,     25,    5, 100
gkindex2, ihindex2		FLslider 	"Modulation Index 2",		0,        10,   0,    23,  idindex2,      490,     25,    5, 150
gkindex3, ihindex3		FLslider 	"Modulation Index 3",		0,        10,   0,    23,  idindex3,      490,     25,    5, 200
gkCarAmp, ihCarAmp		FLslider 	"Carrier Amplitude",		0,         1,   0,    23,  idCarAmp,      490,     25,    5, 350
gkChoDep, ihChoDep		FLslider 	"Chorus Depth",			0,       0.1,   0,    23,  idChoDep,      490,     25,    5, 400
gkChoRte, ihChoRte		FLslider 	"Chorus Rate",			0,        10,   0,    23,  idChoRte,      490,     25,    5, 450
gkChoMix, ihChoMix		FLslider 	"Chorus Dry/Wet Mix",		0,         1,   0,    23,  idChoMix,      490,     25,    5, 500

;BORDERS				ITYPE, IFONT, ISIZE, IWIDTH, IHEIGHT, IX, IY
ih		 	FLbox  	" ", 	6,        9,    15,    480,    70,    10, 260

;VALUE INPUT BOXES				 		MIN | MAX | STEP | TYPE | WIDTH | HEIGHT | X  | Y
gkModRatio1, ihModRatio1	FLtext		"M1", 		.125,  32,  .001,   1,     50,     20,   100, 270
gkModRatio2, ihModRatio2	FLtext		"M2", 		.125,  32,  .001,   1,     50,     20,   160, 270
gkModRatio3, ihModRatio3	FLtext		"M3", 		.125,  32,  .001,   1,     50,     20,   220, 270
gkCarRatio, ihCarRatio		FLtext		"C", 		.125,  32,  .001,   1,     50,     20,   280, 270

;TEXT BOXES								TYPE | FONT | SIZE | WIDTH | HEIGHT | X | Y
;ih		 	FLbox  	":", 					1,      5,     14,     5,    15,    248,  272
;ih		 	FLbox  	"Carrier Frequency", 			1,      5,     12,    90,    15,    170,  300
;ih		 	FLbox  	"Modulator Frequency", 			1,      5,     12,    90,    15,    245,  300

			FLsetVal_i	40, 	ihbasefreq
			FLsetVal_i	0.2, 	ihindex1
			FLsetVal_i	0.1, 	ihindex2
			FLsetVal_i	0.1, 	ihindex3
			FLsetVal_i	7, 	ihModRatio1
			FLsetVal_i	11, 	ihModRatio2
			FLsetVal_i	13, 	ihModRatio3
			FLsetVal_i	1, 	ihCarRatio
			FLsetVal_i	0.1, 	ihCarAmp
			FLsetVal_i	0.003, 	ihChoDep
			FLsetVal_i	1, 	ihChoRte
			FLsetVal_i	0.5, 	ihChoMix

			FLpanel_end

;INSTRUCTIONS AND INFO PANEL
				FLpanel	" ", 500, 480, 512, 0
;TEXT BOXES												TYPE | FONT | SIZE | WIDTH | HEIGHT | X | Y
ih		 	FLbox  	"Phase Modulation Synthesis: mod.1->mod.2->mod.3->carrier     ", 	1,      5,     14,    490,    15,     5,  0
ih		 	FLbox  	"-------------------------------------------------------------", 	1,      5,     14,    490,    15,     5,  20
ih		 	FLbox  	"An implementation of phase modulation synthesis in which     ", 	1,      5,     14,    490,    15,     5,  40
ih		 	FLbox  	"modulator 1 modulates modulator 2 which modulates modulator 3", 	1,      5,     14,    490,    15,     5,  60
ih		 	FLbox  	"which modulates a carrier.                                   ", 	1,      5,     14,    490,    15,     5,  80
ih		 	FLbox  	"                                                             ", 	1,      5,     14,    490,    15,     5, 100
ih		 	FLbox  	"                        +---------+                          ", 	1,      5,     14,    490,    15,     5, 120
ih	  	 	FLbox  	"                        | MOD. 1  |                          ", 	1,      5,     14,    490,    15,     5, 140
ih		 	FLbox  	"                        +----+----+                          ", 	1,      5,     14,    490,    15,     5, 160
ih		 	FLbox  	"                             |                               ", 	1,      5,     14,    490,    15,     5, 180
ih		 	FLbox  	"                        +----+----+                          ", 	1,      5,     14,    490,    15,     5, 200
ih		 	FLbox  	"                        | MOD. 2  |                          ", 	1,      5,     14,    490,    15,     5, 220
ih		 	FLbox  	"                        +----+----+                          ", 	1,      5,     14,    490,    15,     5, 240
ih		 	FLbox  	"                             |                               ", 	1,      5,     14,    490,    15,     5, 260
ih		 	FLbox  	"                        +----+----+                          ", 	1,      5,     14,    490,    15,     5, 280
ih		 	FLbox  	"                        | MOD. 3  |                          ", 	1,      5,     14,    490,    15,     5, 300
ih		 	FLbox  	"                        +----+----+                          ", 	1,      5,     14,    490,    15,     5, 320
ih		 	FLbox  	"                             |                               ", 	1,      5,     14,    490,    15,     5, 340
ih		 	FLbox  	"                        +----+----+                          ", 	1,      5,     14,    490,    15,     5, 360
ih		 	FLbox  	"                        | CARRIER |                          ", 	1,      5,     14,    490,    15,     5, 380
ih		 	FLbox  	"                        +----+----+                          ", 	1,      5,     14,    490,    15,     5, 400
ih		 	FLbox  	"                             |                               ", 	1,      5,     14,    490,    15,     5, 420
ih		 	FLbox  	"                             V                               ", 	1,      5,     14,    490,    15,     5, 440
ih		 	FLbox  	"                            OUT                              ", 	1,      5,     14,    490,    15,     5, 460

				FLpanel_end

				FLrun	;RUN THE FLTK WIDGET THREAD
;END OF FLTK INTERFACE CODE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

gisine	ftgen	0,0,65537,10,1	;A SINE WAVE THAT CAN BE REFERENCED BY THE GLOBAL VARIABLE 'gisine'
zakinit	2,2

instr	1	;MIDI INPUT INSTRUMENT
	if	gkOnOff=1	then	;IF FLTK/MIDI SWITCH IS SET TO 'FLTK'...
		turnoff			;TURN THIS INSTRUMENT OFF
	endif				;END OF CONDITIONAL BRANCHING
	icps	cpsmidi			;READ CYCLES PER SECOND VALUE FROM MIDI INPUT
	iamp	ampmidi	1		;READ IN A NOTE VELOCITY VALUE FROM THE MIDI INPUT
	;				P1 | P4 | P5
	aoutL, aoutR	subinstr	2,  icps, iamp	;ACTIVATE A SUB-INSTRUMENT
		outs	aoutL, aoutR	;SEND AUDIO TO SPEAKERS
endin

instr	2		;FM INSTRUMENT
	kactive1	active	1	;SENSE NUMBER OF ACTIVE INSTANCES OF INSTRUMENT 1 (I.E. MIDI ACTIVATED INSTRUMENT) 
	if	gkOnOff=0&&kactive1=0	then	;IF FLTK/MIDI SWITCH IS SET TO 'MIDI' AND NO MIDI NOTES ARE ACTIVE...
		turnoff					;TURN THIS INSTRUMENT
	endif						;END OF CONDITIONAL BRANCHING
	if	gkOnOff = 1	then			;IF FLTK/MIDI SWITCH IS SET TO 'FLTK'...
		kCarAmp = gkCarAmp			;SET kamp TO FLTK SLIDER VALUE gkamp
		kbasefreq = gkbasefreq			;SET FUNDEMENTAL TO FLTK SLIDER gkfund
		kindex1 = gkindex1			;SET INDEX TO FLTK SLIDER gkindex
		kindex2 = gkindex2			;SET INDEX TO FLTK SLIDER gkindex
		kindex3 = gkindex3			;SET INDEX TO FLTK SLIDER gkindex
	else						;OTHERWISE...
		kbasefreq = p4				;SET FUNDEMENTAL TO RECEIVED p4 RECEIVED FROM INSTR 1. I.E. MIDI PITCH
		kCarAmp = p5 * gkCarAmp			;SET AMPLITUDE TO RECEIVED p5 RECEIVED FROM INSTR 1 (I.E. MIDI VELOCITY) MULTIPLIED BY FLTK SLIDER gkamp.
		kindex1 = p5 * gkindex1			;SET INDEX TO FLTK SLIDER gkindex MULTIPLIED BY AMPLITUDE VALUES RECEIVED FROM CALLING INSTRUMENT
		kindex2 = p5 * gkindex2			;SET INDEX TO FLTK SLIDER gkindex MULTIPLIED BY AMPLITUDE VALUES RECEIVED FROM CALLING INSTRUMENT
		kindex3 = p5 * gkindex3			;SET INDEX TO FLTK SLIDER gkindex MULTIPLIED BY AMPLITUDE VALUES RECEIVED FROM CALLING INSTRUMENT
	endif						;END OF CONDITIONAL BRANCHING

	iporttime	=	.05				;PORTAMENTO FUNCTION (WILL BE USED TO SMOOTH PARAMETER MOVED BY FLTK WIDGETS)
	kporttime	linseg	0,.001,iporttime,1,iporttime	;PORTAMENTO FUNCTION (WILL BE USED TO SMOOTH PARAMETER MOVED BY FLTK WIDGETS)
	
	kindex1		portk	kindex1, kporttime		;APPLY SMOOTHING PORTAMENTO TO THE VARIABLE 'kindex'
	kindex2		portk	kindex2, kporttime		;APPLY SMOOTHING PORTAMENTO TO THE VARIABLE 'kindex'
	kindex3		portk	kindex3, kporttime		;APPLY SMOOTHING PORTAMENTO TO THE VARIABLE 'kindex'
	kbasefreq	portk	kbasefreq, kporttime		;APPLY SMOOTHING PORTAMENTO TO THE VARIABLE 'kbasefreq'
	kCarAmp		portk	kCarAmp, kporttime		;APPLY SMOOTHING PORTAMENTO TO THE VARIABLE 'kCarAmp'

	aModPhase1	phasor	kbasefreq * gkModRatio1		;CREATE A MOVING PHASE VALUE THAT WILL BE USED TO READ CREATE MODULATOR 1
	aModulator1	tablei	aModPhase1,gisine,1,0,1		;MODULATOR 1 IS CREATED                                                  
	aModulator1	=	aModulator1*kindex1		;MODULATOR 1 AMPLITUDE RESCALED                                          

	aModPhase2	phasor	kbasefreq * gkModRatio2		;CREATE A MOVING PHASE VALUE THAT WILL BE USED TO READ CREATE MODULATOR 2                     
	aModPhase2	=	aModPhase2 + aModulator1	;MODULATOR 1 SIGNAL IS ADDED TO MODULATOR 2 PHASE VARIABLE                                    
	aModulator2	tablei	aModPhase2,gisine,1,0,1		;MODULATOR 2 OSCILLATOR IS CREATED
	aModulator2	=	aModulator2 * kindex2		;MODULATOR 2 AMPLITUDE RESCALED                                                               

	aModPhase3	phasor	kbasefreq * gkModRatio3		;CREATE A MOVING PHASE VALUE THAT WILL BE USED TO READ CREATE MODULATOR 3                     
	aModPhase3	=	aModPhase3 + aModulator2	;MODULATOR 2 SIGNAL IS ADDED TO MODULATOR 3 PHASE VARIABLE                                    
	aModulator3	tablei	aModPhase3,gisine,1,0,1		;MODULATOR 3 OSCILLATOR IS CREATED
	aModulator3	=	aModulator3 * kindex3		;MODULATOR 3 AMPLITUDE RESCALED                                                               

	aCarrPhase	phasor	kbasefreq * gkCarRatio		;CREATE A MOVING PHASE VALUE THAT WILL BE USED TO READ CREATE THE CARRIER
	aCarrPhase	=	aCarrPhase + aModulator3	;MODULATOR 3 SIGNAL IS ADDED TO CARRIER PHASE VARIABLE
	aCarrier	tablei	aCarrPhase,gisine,1,0,1		;CARRIER OSCILLATOR IS CREATED
	aAntiClick	linsegr	0,0.001,1,0.01,0		;ANTI CLICK ENVELOPE
	aCarrier	=	aCarrier*kCarAmp*aAntiClick	;CARRIER AMPLITUDE IS RESCALED

	zawm		aCarrier, 1
endin

instr	3	;CHORUS
	iporttime	=	0.05					;DEFINE A RAMPING UP VARIABLE THAT WILL BE USED FOR PORTAMENTO TIME
	kporttime	linseg	0,0.01,iporttime,1,iporttime    	;DEFINE A RAMPING UP VARIABLE THAT WILL BE USED FOR PORTAMENTO TIME
	kChoDep		portk	gkChoDep, kporttime             	;APPLY PORTAMENTO SMOOTHING TO SLIDER VARIABLE gkChoDep
	ain		zar	1					;READ AUDIO FROM ZAK CHANNEL 1
	ichooffset	init	.001					;OFFSET TIME FOR CHORUSING DELAY
	achodepth	interp	kChoDep					;CONVERT kChoDep TO A-RATE
	kchofrq		randomi	-gkChoRte, gkChoRte, 1			;CREATE CHORUS RATE VARIABLE AS RANDOMLY MOVING VARIABLE THE RANGE OF WHICH IS DEFINED BY SLIDER 'Chorus Rate'
	adlt		oscili	kChoDep * 0.5, kchofrq*gkChoRte, gisine	;CREATE DELAY TIME VARIABLE
	adlt		=	adlt + (achodepth * 0.5) + ichooffset	;OFFSET DELAY TIME VARIABLE
	
	imaxdlt		init	1					;DEFINE MAXIMUM DELAY TIME
	abuffer		delayr	1					;SET UP DELAY BUFFER
	atap		deltap3	adlt					;READ A DELAY TAP FROM THE BUFFER
			delayw	ain					;WRITE AUDIO INTO BUFFER
	zawm		atap, 2						;MIX CHORUSED TONES INTO ZAK CHANNEL 2
endin

instr	4	;AUDIO OUTPUT
	adry	zar	1			;READ DRY SIGNAL FROM ZAK CHANNEL 1
	acho	zar	2			;READ CHORUSED AUDIO FROM ZAK CHANNEL 2
	amix	ntrpol	adry, acho, gkChoMix	;MIX DRY AND CHORUSED AND AUDIO
	outs	amix, amix			;SEND AUDIO TO OUTPUTS
	zacl	0,2				;CLEAR ZAK VARIABLES
endin

</CsInstruments>


<CsScore>
i 3 0 3600	;CHORUS VOICES
i 3 0 3600      ;CHORUS VOICES
i 3 0 3600      ;CHORUS VOICES
i 3 0 3600      ;CHORUS VOICES
i 3 0 3600      ;CHORUS VOICES
i 3 0 3600      ;CHORUS VOICES
i 3 0 3600      ;CHORUS VOICES
i 3 0 3600      ;CHORUS VOICES
i 3 0 3600      ;CHORUS VOICES
i 4 0 3600	;AUDIO OUTPUT
</CsScore>

</CsoundSynthesizer>