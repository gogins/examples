;
; ""
; by 
;
; 
;
; Generated by blue 2.1.10 (http://blue.kunstmusik.com)
;

<CsoundSynthesizer>

<CsInstruments>
sr=44100
ksmps=1
nchnls=2
0dbfs=1


gk_blue_auto0 init 0.0009999999
gk_blue_auto1 init 1.3235793114
gk_blue_auto2 init 0
gk_blue_auto3 init 0.4931077361
gk_blue_auto4 init 0.1123814806
gk_blue_auto5 init 0.1966840029
gk_blue_auto6 init 9.4096012115
gk_blue_auto7 init 0.0157005787
gk_blue_auto8 init 0.4931077361
gk_blue_auto9 init 1


gi_padsynth_1 = 0
gi_padsynth_2 = 0


	opcode panner,kk,k

; sin/cos taper, constant power.
kPanpos xin
kPanpos = kPanpos/2

kPanpos	= kPanpos * 3.14159265359 * .5
kLeft     	= sqrt(2) / 2 * (cos(kPanpos) - sin(kPanpos)) 
kRight    	= sqrt(2) / 2 * (cos(kPanpos) + sin(kPanpos))
xout kLeft,kRight

	endop
	opcode getFrequency,i,i

ipch 	xin

iout	= (ipch < 15 ? cpspch(ipch) : ipch)
	
xout	iout


	endop
	opcode mvpEnvelope,k,iiii

iatk, idec, isus, irel xin

ifrac = (iatk+idec+irel)/p3
if ( ifrac > 1 ) then
	iatk = iatk / ifrac
	idec = idec / ifrac
	irel = irel / ifrac
endif

kenv adsr iatk, idec, isus, irel

xout kenv

	endop
	opcode clipi,i,iii

ival, imin, imax xin

if ival<imin then
	ival = imin
elseif ival>imax then
	ival = imax
endif

xout ival


	endop


	instr 1	;PadSynth
ifreq getFrequency p4
iamp = ((p5 > 0) ? 0dbfs*p5 : ampdbfs(p5))*ampdb(0.0)

kenv mvpEnvelope i(gk_blue_auto0), i(gk_blue_auto1), i(gk_blue_auto4), i(gk_blue_auto3)

irandom_phase_start = 0
istereo_phase = 1

if gi_padsynth_1==0 then
	ibandtype = 4
	ispec_len = 2^18
	ibasefreq = 440 ; can be lower or higher frequency; close to played frequency is said to be best
	ibw_cents = 56.96943 ; width of the peaks, 100 is whole note
	ibw = (2^(ibw_cents/1200)-1)*ibasefreq/(2*sr)
	inr_harm = 15
	iodd_harmonics = 1 ; 0 for harmonics 1, 2, 3, ...; 1 for 1, 3, 5, ...
	idivide_by_harmonic = 0
	idetune = 0.090272054

	; create spectrum table, initially filled with 0:
	gi_spectrum ftgentmp 0, 0, ispec_len*4, 7, 0, ispec_len*4, 0

	i_amps ftgentmp 0, 0, 16, 2, 0.7600046992, 0.6199994683, 0.9399998784, 0.4400023818, 0.0600003302, 0.8499968648, 0.0899999291, 0.8199964762, 0.3199984133, 0.9400014281, 0.3000001907, 0.120003365, 0.1799997687, 0.5200006366, 0.9300042987

	; fill in amplitudes and phases:
	iharm = 1
	harm_loop:
		if iodd_harmonics==0 then
			ifreq_i = ibasefreq*(iharm + idetune*(iharm-1))/sr
		else
			ifreq_i = ibasefreq*(2*iharm-1 + idetune*(iharm-1))/sr
		endif
		iharm_amp table iharm-1, i_amps
		if idivide_by_harmonic!=0 then
			iharm_amp = iharm_amp / iharm
		endif
		ibw_i = ibw*iharm^0.58764285
		if ibandtype==2 then
			ipos = floor((ifreq_i-ibw_i)*ispec_len)
			if ipos>=0 && ipos<ispec_len then
				tableiw iharm_amp, ipos*3, gi_spectrum
			endif
			ipos = floor((ifreq_i+ibw_i)*ispec_len)
			if ipos>=0 && ipos<ispec_len then
				tableiw iharm_amp, ipos*3, gi_spectrum
			endif
		elseif ibandtype==3 then
			ipos = floor((ifreq_i-ibw_i)*ispec_len)
			if ipos>=0 && ipos<ispec_len then
				tableiw iharm_amp, ipos*3, gi_spectrum
			endif
			ipos = floor(ifreq_i*ispec_len)
			if ipos>=0 && ipos<ispec_len then
				tableiw iharm_amp, ipos*3, gi_spectrum
			endif
			ipos = floor((ifreq_i+ibw_i)*ispec_len)
			if ipos>=0 && ipos<ispec_len then
				tableiw iharm_amp, ipos*3, gi_spectrum
			endif
		elseif ibandtype==4 || ibandtype==5 then
			; gaussian and gaussian*x
			ithreshhold = 0.0001
			if ithreshhold*ibw_i/abs(iharm_amp) < 1 then
				ipos = floor(ispec_len*(ifreq_i-ibw_i*sqrt(-log(ithreshhold*ibw_i/abs(iharm_amp)))))
				ipos clipi ipos, 0, ispec_len
				iend = floor(ispec_len*(ifreq_i+ibw_i*sqrt(-log(ithreshhold*ibw_i/abs(iharm_amp)))))
				iend clipi iend, 0, ispec_len
				gauss_fill_loop:
					ix = ipos/ispec_len - ifreq_i
					ival = iharm_amp*exp(-ix*ix/(ibw_i*ibw_i))/ibw_i
					if ibandtype==5 then
						ival = ival*ix
					endif
					ipres table ipos*3,   gi_spectrum
					tableiw ipres+ival,   ipos*3,   gi_spectrum
					loop_lt ipos, 1, iend, gauss_fill_loop
			endif
		elseif ibandtype==6 then
			; triangle
			icenter = floor(ifreq_i*ispec_len+0.5)
			
			ipos = floor((ifreq_i-ibw_i)*ispec_len+0.5)
			ipos clipi ipos, 0, ispec_len
			iend = floor((ifreq_i+ibw_i)*ispec_len+0.5)
			iend clipi iend, 0, ispec_len
			triangle_fill_loop:
				ival = iharm_amp*(ibw_i*ispec_len-abs(ipos-icenter))/(ibw_i*ispec_len)
				ipres table ipos*3,   gi_spectrum
				tableiw ipres+ival,   ipos*3,   gi_spectrum
				loop_lt ipos, 1, iend, triangle_fill_loop
		elseif ibandtype==8 then
			; block
			ipos = floor((ifreq_i-ibw_i)*ispec_len)
			ipos clipi ipos, 0, ispec_len
			iend = floor((ifreq_i+ibw_i)*ispec_len)
			iend clipi iend, 0, ispec_len
			block_fill_loop:
				ipres table ipos*3,   gi_spectrum
				tableiw ipres+iharm_amp,   ipos*3,   gi_spectrum
				loop_lt ipos, 1, iend, block_fill_loop
		endif
		loop_le iharm, 1, inr_harm, harm_loop
	ipos = 0
	fill_loop:
		ipres table ipos*3,   gi_spectrum
		tableiw ipos,   ipos*3+1, gi_spectrum
		tableiw rnd(1), ipos*3+2, gi_spectrum
		loop_lt ipos, 1, ispec_len, fill_loop

	; inverse fourier transform
	gi_padsynth_1 ftgen 0, 0, ispec_len, 33, gi_spectrum, ispec_len, 1
endif

if irandom_phase_start!=0 then
	iphase = rnd(1)
else
	iphase = 0
endif

kpan = gk_blue_auto2

if istereo_phase==0 then
	asig oscili iamp, ifreq*(sr/ispec_len/ibasefreq), gi_padsynth_1, iphase
	asig = asig*kenv
	kleft, kright panner kpan
	outc asig*kleft, asig*kright
else
	asig1 oscili iamp, ifreq*(sr/ispec_len/ibasefreq), gi_padsynth_1, iphase
	asig2 oscili iamp, ifreq*(sr/ispec_len/ibasefreq), gi_padsynth_1, iphase+0.5
	kleft, kright panner kpan
	outc asig1*kenv*kleft, asig2*kenv*kright
endif

	endin

	instr 2	;PadSynth - frozen
ifreq getFrequency p4
iamp = ((p5 > 0) ? 0dbfs*p5 : ampdbfs(p5))*ampdb(0.0)

kenv mvpEnvelope i(gk_blue_auto5), i(gk_blue_auto6), i(gk_blue_auto9), i(gk_blue_auto8)

irandom_phase_start = 0
istereo_phase = 1

if gi_padsynth_2==0 then
	ibandtype = 8
	ispec_len = 2^18
	ibasefreq = 440 ; can be lower or higher frequency; close to played frequency is said to be best
	ibw_cents = 165.35545 ; width of the peaks, 100 is whole note
	ibw = (2^(ibw_cents/1200)-1)*ibasefreq/(2*sr)
	inr_harm = 15
	iodd_harmonics = 0 ; 0 for harmonics 1, 2, 3, ...; 1 for 1, 3, 5, ...
	idivide_by_harmonic = 1
	idetune = -0.04040152

	; create spectrum table, initially filled with 0:
	gi_spectrum ftgentmp 0, 0, ispec_len*4, 7, 0, ispec_len*4, 0

	i_amps ftgentmp 0, 0, 16, 2, 0.2099988759, 0.4800026119, 0.5700012445, 0.1200010478, 0.3800012171, 0.4399985075, 0.980001688, 0.6699983478, 0.7800044417, 0.409996599, 0.7500039339, 0.3500010371, 0.6300029755, 0.4500024319, 0.4699997902

	; fill in amplitudes and phases:
	iharm = 1
	harm_loop:
		if iodd_harmonics==0 then
			ifreq_i = ibasefreq*(iharm + idetune*(iharm-1))/sr
		else
			ifreq_i = ibasefreq*(2*iharm-1 + idetune*(iharm-1))/sr
		endif
		iharm_amp table iharm-1, i_amps
		if idivide_by_harmonic!=0 then
			iharm_amp = iharm_amp / iharm
		endif
		ibw_i = ibw*iharm^1.8130714
		if ibandtype==2 then
			ipos = floor((ifreq_i-ibw_i)*ispec_len)
			if ipos>=0 && ipos<ispec_len then
				tableiw iharm_amp, ipos*3, gi_spectrum
			endif
			ipos = floor((ifreq_i+ibw_i)*ispec_len)
			if ipos>=0 && ipos<ispec_len then
				tableiw iharm_amp, ipos*3, gi_spectrum
			endif
		elseif ibandtype==3 then
			ipos = floor((ifreq_i-ibw_i)*ispec_len)
			if ipos>=0 && ipos<ispec_len then
				tableiw iharm_amp, ipos*3, gi_spectrum
			endif
			ipos = floor(ifreq_i*ispec_len)
			if ipos>=0 && ipos<ispec_len then
				tableiw iharm_amp, ipos*3, gi_spectrum
			endif
			ipos = floor((ifreq_i+ibw_i)*ispec_len)
			if ipos>=0 && ipos<ispec_len then
				tableiw iharm_amp, ipos*3, gi_spectrum
			endif
		elseif ibandtype==4 || ibandtype==5 then
			; gaussian and gaussian*x
			ithreshhold = 0.0001
			if ithreshhold*ibw_i/abs(iharm_amp) < 1 then
				ipos = floor(ispec_len*(ifreq_i-ibw_i*sqrt(-log(ithreshhold*ibw_i/abs(iharm_amp)))))
				ipos clipi ipos, 0, ispec_len
				iend = floor(ispec_len*(ifreq_i+ibw_i*sqrt(-log(ithreshhold*ibw_i/abs(iharm_amp)))))
				iend clipi iend, 0, ispec_len
				gauss_fill_loop:
					ix = ipos/ispec_len - ifreq_i
					ival = iharm_amp*exp(-ix*ix/(ibw_i*ibw_i))/ibw_i
					if ibandtype==5 then
						ival = ival*ix
					endif
					ipres table ipos*3,   gi_spectrum
					tableiw ipres+ival,   ipos*3,   gi_spectrum
					loop_lt ipos, 1, iend, gauss_fill_loop
			endif
		elseif ibandtype==6 then
			; triangle
			icenter = floor(ifreq_i*ispec_len+0.5)
			
			ipos = floor((ifreq_i-ibw_i)*ispec_len+0.5)
			ipos clipi ipos, 0, ispec_len
			iend = floor((ifreq_i+ibw_i)*ispec_len+0.5)
			iend clipi iend, 0, ispec_len
			triangle_fill_loop:
				ival = iharm_amp*(ibw_i*ispec_len-abs(ipos-icenter))/(ibw_i*ispec_len)
				ipres table ipos*3,   gi_spectrum
				tableiw ipres+ival,   ipos*3,   gi_spectrum
				loop_lt ipos, 1, iend, triangle_fill_loop
		elseif ibandtype==8 then
			; block
			ipos = floor((ifreq_i-ibw_i)*ispec_len)
			ipos clipi ipos, 0, ispec_len
			iend = floor((ifreq_i+ibw_i)*ispec_len)
			iend clipi iend, 0, ispec_len
			block_fill_loop:
				ipres table ipos*3,   gi_spectrum
				tableiw ipres+iharm_amp,   ipos*3,   gi_spectrum
				loop_lt ipos, 1, iend, block_fill_loop
		endif
		loop_le iharm, 1, inr_harm, harm_loop
	ipos = 0
	fill_loop:
		ipres table ipos*3,   gi_spectrum
		tableiw ipos,   ipos*3+1, gi_spectrum
		tableiw rnd(1), ipos*3+2, gi_spectrum
		loop_lt ipos, 1, ispec_len, fill_loop

	; inverse fourier transform
	gi_padsynth_2 ftgen 0, 0, ispec_len, 33, gi_spectrum, ispec_len, 1
endif

if irandom_phase_start!=0 then
	iphase = rnd(1)
else
	iphase = 0
endif

kpan = gk_blue_auto7

if istereo_phase==0 then
	asig oscili iamp, ifreq*(sr/ispec_len/ibasefreq), gi_padsynth_2, iphase
	asig = asig*kenv
	kleft, kright panner kpan
	outc asig*kleft, asig*kright
else
	asig1 oscili iamp, ifreq*(sr/ispec_len/ibasefreq), gi_padsynth_2, iphase
	asig2 oscili iamp, ifreq*(sr/ispec_len/ibasefreq), gi_padsynth_2, iphase+0.5
	kleft, kright panner kpan
	outc asig1*kenv*kleft, asig2*kenv*kright
endif

	endin


</CsInstruments>

<CsScore>



i1 0 2 5.00 -10
i1 + 2 7.00 -10
i1 + 2 9.00 -10

i2 8 2 5.00 -10
i2 + 2 7.00 -10
i2 + 2 9.00 -10




e

</CsScore>

</CsoundSynthesizer>