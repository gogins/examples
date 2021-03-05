;Westkreuz28.sco - Csound Score to Westkreuz28.orc,
;a composition by Radu Grigorovici
;Copyright (C) 2004  Radu Grigorovici
;
;This program is free software; you can redistribute it and/or
;modify it under the terms of the GNU General Public License
;as published by the Free Software Foundation; either version 2
;of the License, or (at your option) any later version.
;
;This program is distributed in the hope that it will be useful,
;but WITHOUT ANY WARRANTY; without even the implied warranty of
;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;GNU General Public License for more details.
;
;You should have received a copy of the GNU General Public License
;along with this program; if not, write to the Free Software
;Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

;email: radu_grigorovici@yahoo.com

f1 0  65536 10 1 ;sine
f2 0  65536 07 1 65536 -1 ;envelope saw

f20 0 16 -2 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
f21 0 16 -2 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0
f22 0 16 -2 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0
f23 0 16 -2 0.1 0.1 1 0 0.1 0 1 0 0.1 0 1 0 0.1 0 1 1
f24 0 16 -2 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0
f25 0 16 -2 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1
f26 0 16 -2 1 0.5 0 0 1 0.5 0 0 1 0.5 0 1 0.5 1 0 0
f29 0 16 -2 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0
f30 0 16 -2 1 0 0.5 1 0 0.5 1 0 1 0 0.5 1 0 0.5 1 0
f31 0 16 -2 1 0.5 0.25 0.125 1 0.5 0.25 0.125 1 0.5 0.25 0.125 1 0.5 0.25 0.125
f32 0 16 -2 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1

f40 0 16 -2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
f41 0 16 -2 09 0 0 16 0 0 09 0 19 0 0 21 0 0 16 0

f50 0 16 07  1 16 1
f51 0 16 07  0 16 1
f52 0 16 07  1 16 0
f53 0 16 16  0 16 5 1
f54 0 16 16  1 16 -5 0
f55 0 16 16  0 16 5 1
f56 0 16 16  0.5 6 -2 1 10 6 0
f57 0 16 16  1 16 -6 0
f58 0 16 16  1 16 -4 0
f59 0 16 16  1 16 -10 0
f60 0 16 16  1 16 -15 0
f61 0 16 16  1 1 -10 0.3 12 0 0.1 1 0 0
f62 0 16 16  1 16 -10 0

t0 144
i1 0 1 144

;###################################################
;   P A T T E R N S
;###################################################

;__________|start.dur...vol|__|pitch.....|__|amp.....|__|filter..|__|res.....|__|distort.|__|seq.density.|__|sq.level|__|fl.level|__|seq.env.|__|at|_|pt|_|hp|_|w|_|ns|_|pn|
#define blips01(s01) #
i2 [$s01.+00.000] 12.000 030  8.00 8.00 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  020
i2 [$s01.+00.500] 12.000 030  7.11 7.11 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  040
i2 [$s01.+01.000] 12.000 030  8.00 8.00 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  060
i2 [$s01.+01.500] 12.000 035  7.04 7.04 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  080

i2 [$s01.+08.000] 12.000 030  7.11 7.11 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  020
i2 [$s01.+08.500] 12.000 030  7.09 7.09 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  040
i2 [$s01.+09.000] 12.000 030  7.11 7.11 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  060
i2 [$s01.+09.500] 12.000 035  7.04 7.04 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  080

i2 [$s01.+12.000] 12.000 020  7.11 7.11 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  020
i2 [$s01.+12.500] 12.000 020  7.09 7.09 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  040
i2 [$s01.+13.000] 12.000 020  7.11 7.11 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  060
i2 [$s01.+13.500] 12.000 025  7.04 7.04 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  080
i2 [$s01.+15.000] 12.000 020  7.11 7.11 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  020
#
;__________|start.dur...vol|__|pitch.....|__|amp.....|__|filter..|__|res.....|__|distort.|__|seq.density.|__|sq.level|__|fl.level|__|seq.env.|__|at|_|pt|_|hp|_|w|_|ns|_|pn|
#define blips02(s02) #
i2 [$s02.+00.000] 12.000 030  7.09 7.09 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  020
i2 [$s02.+00.500] 12.000 030  7.07 7.07 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  040
i2 [$s02.+01.000] 12.000 030  7.09 7.09 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  060
i2 [$s02.+01.500] 12.000 035  7.00 7.00 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  080

i2 [$s02.+08.000] 12.000 030  7.11 7.11 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  020
i2 [$s02.+08.500] 12.000 030  7.09 7.09 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  040
i2 [$s02.+09.000] 12.000 030  7.11 7.11 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  060
i2 [$s02.+09.500] 12.000 035  7.04 7.04 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  080

i2 [$s02.+12.000] 12.000 020  7.11 7.11 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  020
i2 [$s02.+12.500] 12.000 020  7.09 7.09 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  040
i2 [$s02.+13.000] 12.000 020  7.11 7.11 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  060
i2 [$s02.+13.500] 12.000 025  7.04 7.04 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  080
i2 [$s02.+15.000] 12.000 020  7.11 7.11 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  020
#
;__________|start.dur...vol|__|pitch.....|__|amp.....|__|filter..|__|res.....|__|distort.|__|seq.density.|__|sq.level|__|fl.level|__|seq.env.|__|at|_|pt|_|hp|_|w|_|ns|_|pn|
#define blips03(s03) #
i2 [$s03.+00.000] 12.000 030  8.00 8.00 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  020
i2 [$s03.+00.500] 12.000 030  7.11 7.11 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  040
i2 [$s03.+01.000] 12.000 030  8.00 8.00 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  060
i2 [$s03.+01.500] 12.000 035  7.04 7.04 40  100 000 54  070 030 51  000 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  040   1  000  080
#
;__________|start.dur...vol|__|pitch.....|__|amp.....|__|filter..|__|res.....|__|distort.|__|seq.density.|__|sq.level|__|fl.level|__|seq.env.|__|at|_|pt|_|hp|_|w|_|ns|_|pn|
#define blips11(s11) #
i2 [$s11.+00.000] 12.000 030  6.09 6.09 40  100 000 52  050 020 51  010 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  020   1  000  050
i2 [$s11.+08.000] 12.000 030  6.04 6.04 40  100 000 52  050 020 51  010 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  020   1  000  050
#
#define blips12(s12) #
i2 [$s12.+00.000] 12.000 030  6.00 6.00 40  100 000 52  050 020 51  010 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  020   1  000  050
i2 [$s12.+08.000] 12.000 030  6.04 6.04 40  100 000 52  050 020 51  010 020 51  100 100 50  0.250 0.250 50  100 100 50  000 000 50  030 030 50  022  040  020   1  000  050
#
#define blips111(s111) #
$blips01([$s111.+00])
$blips01([$s111.+16])
$blips01([$s111.+32])
$blips02([$s111.+48])
$blips11([$s111.+32])
$blips12([$s111.+48])
#
#define blips112(s112) #
$blips01([$s112.+00])
$blips01([$s112.+16])
$blips01([$s112.+32])
$blips02([$s112.+48])
$blips11([$s112.+00])
$blips11([$s112.+16])
$blips11([$s112.+32])
$blips12([$s112.+48])
#
#define blips113(s113) #
$blips01([$s113.+32])
$blips02([$s113.+48])
$blips11([$s113.+00])
$blips11([$s113.+16])
$blips11([$s113.+32])
$blips12([$s113.+48])
#
;__________|start.dur...vol|__|pitch.....|__|amp.....|__|filter..|__|res.....|__|distort.|__|seq.density.|__|sq.level|__|fl.level|__|seq.env.|__|at|_|pt|_|hp|_|w|_|ns|_|pn|
#define bass21(s21) #
i2 [$s21.+00.000] 64.000 030  5.09 5.09 40  100 100 50  020 020 50  000 000 50  050 050 50  0.250 0.250 50  100 100 50  000 000 50  045 045 50  023  040  000   1  000  050
#
#define bass22(s22) #
i2 [$s22.+00.000] 48.000 030  5.09 5.09 40  100 100 50  020 020 50  000 000 50  050 050 50  0.250 0.250 50  100 100 50  000 000 50  045 045 50  023  040  000   1  000  050
#
;__________|start.dur...vol|__|pitch.....|__|amp.....|__|filter..|__|res.....|__|distort.|__|seq.density.|__|sq.level|__|fl.level|__|seq.env.|__|at|_|pt|_|hp|_|w|_|ns|_|pn|
#define ekoblip31(s31) #
i2 [$s31.+00.000] 16.000 030  7.00 7.00 40  100 100 50  030 070 51  030 030 51  100 100 50  0.500 0.500 50  100 100 50  000 000 50  030 030 50  024  041  030   1  000  050
i2 [$s31.+00.750] 16.000 010  7.00 7.00 40  100 100 50  020 060 51  030 030 51  100 100 50  0.500 0.500 50  100 100 50  000 000 50  030 030 50  024  041  030   1  000  090
i2 [$s31.+01.500] 16.000 010  7.00 7.00 40  100 100 50  020 060 51  030 030 51  100 100 50  0.500 0.500 50  100 100 50  000 000 50  030 030 50  024  041  030   1  000  010
#
#define ekoblip32(s32) #
i2 [$s32.+00.000] 16.000 030  7.00 7.00 40  100 100 50  070 070 50  030 030 51  100 100 50  0.500 0.500 50  100 100 50  000 000 50  030 030 50  024  041  030   1  000  050
i2 [$s32.+00.750] 16.000 010  7.00 7.00 40  100 100 50  060 060 50  030 030 51  100 100 50  0.500 0.500 50  100 100 50  000 000 50  030 030 50  024  041  030   1  000  090
i2 [$s32.+01.500] 16.000 010  7.00 7.00 40  100 100 50  060 060 50  030 030 51  100 100 50  0.500 0.500 50  100 100 50  000 000 50  030 030 50  024  041  030   1  000  010
#
#define ekoblip33(s33) #
i2 [$s33.+00.000] 16.000 030  7.00 7.00 40  100 100 50  070 030 52  030 030 51  100 100 50  0.500 0.500 50  100 100 50  000 000 50  030 030 50  024  041  030   1  000  050
i2 [$s33.+00.750] 16.000 010  7.00 7.00 40  100 100 50  060 020 52  030 030 51  100 100 50  0.500 0.500 50  100 100 50  000 000 50  030 030 50  024  041  030   1  000  090
i2 [$s33.+01.500] 16.000 010  7.00 7.00 40  100 100 50  060 020 52  030 030 51  100 100 50  0.500 0.500 50  100 100 50  000 000 50  030 030 50  024  041  030   1  000  010
#
#define ekoblip34(s34) #
i2 [$s34.+08.000] 08.000 030  7.00 7.00 40  100 100 50  070 030 52  030 030 51  100 100 50  0.500 0.500 50  100 100 50  000 000 50  030 030 50  024  041  030   1  000  050
i2 [$s34.+08.750] 08.000 010  7.00 7.00 40  100 100 50  060 020 52  030 030 51  100 100 50  0.500 0.500 50  100 100 50  000 000 50  030 030 50  024  041  030   1  000  090
i2 [$s34.+09.500] 08.000 010  7.00 7.00 40  100 100 50  060 020 52  030 030 51  100 100 50  0.500 0.500 50  100 100 50  000 000 50  030 030 50  024  041  030   1  000  010
#
#define ekoblip331(s331) #
$ekoblip31([$s331.+00])
$ekoblip33([$s331.+16])
$ekoblip31([$s331.+32])
$ekoblip33([$s331.+48])
#
#define ekoblip332(s332) #
$ekoblip31([$s332.+00])
$ekoblip32([$s332.+16])
$ekoblip32([$s332.+32])
$ekoblip33([$s332.+48])
#
#define ekoblip333(s333) #
$ekoblip32([$s333.+00])
$ekoblip32([$s333.+16])
$ekoblip33([$s333.+32])
$ekoblip31([$s333.+48])
#
#define ekoblip334(s334) #
$ekoblip33([$s334.+00])
$ekoblip31([$s334.+16])
$ekoblip33([$s334.+32])
#
;__________|start.dur...vol|__|pitch.....|__|amp.....|__|filter..|__|res.....|__|distort.|__|seq.density.|__|sq.level|__|fl.level|__|seq.env.|__|at|_|pt|_|hp|_|w|_|ns|_|pn|
#define highs41(s41) #
i2 [$s41.+00.000] 64.000 020  7.00 7.00 40  100 100 20  095 095 20  020 020 60  100 100 60  0.500 0.500 40  100 100 60  030 030 40  030 030 60  025  020  090   1  010  050
i2 [$s41.+00.000] 64.000 010  7.00 7.00 40  100 100 20  095 095 20  030 030 60  100 100 60  0.250 0.250 40  100 100 60  030 030 40  030 030 60  026  020  090   1  010  010
i2 [$s41.+00.001] 64.000 010  7.00 7.00 40  100 100 20  094 094 20  030 030 60  100 100 60  0.250 0.250 40  100 100 60  030 030 40  030 030 60  026  020  090   1  010  090
#
#define highs42(s42) #
i2 [$s42.+00.000] 32.000 020  7.00 7.00 40  100 100 20  095 095 20  020 020 60  100 100 60  0.500 0.500 40  100 100 60  030 030 40  030 030 60  025  020  090   1  010  050
i2 [$s42.+00.000] 32.000 010  7.00 7.00 40  100 100 20  095 095 20  030 030 60  100 100 60  0.250 0.250 40  100 100 60  030 030 40  030 030 60  026  020  090   1  010  010
i2 [$s42.+00.001] 32.000 010  7.00 7.00 40  100 100 20  094 094 20  030 030 60  100 100 60  0.250 0.250 40  100 100 60  030 030 40  030 030 60  026  020  090   1  010  090
#
#define highs43(s43) #
i2 [$s43.+00.000] 32.000 020  7.00 7.00 40  100 100 20  095 095 20  020 020 60  100 100 60  0.500 0.500 40  100 100 60  030 030 40  030 030 60  025  020  090   1  010  050
#
;__________|start.dur...vol|__|pitch.....|__|amp.....|__|filter..|__|res.....|__|distort.|__|seq.density.|__|sq.level|__|fl.level|__|seq.env.|__|at|_|pt|_|hp|_|w|_|ns|_|pn|
#define claps51(s51) #
i2 [$s51.+01.000] 01.000 020  8.00 6.00 58  100 001 57  099 099 57  000 000 57  000 200 57  0.040 0.010 57  100 040 57  030 050 59  000 030 57  020  040  000   1  100  050
i2 [$s51.+03.000] 01.000 020  8.00 6.00 58  100 001 57  099 099 57  000 000 57  000 200 57  0.040 0.010 57  100 040 57  030 050 59  000 030 57  020  040  000   1  100  050
i2 [$s51.+05.000] 01.000 020  8.00 6.00 58  100 001 57  099 099 57  000 000 57  000 200 57  0.040 0.010 57  100 040 57  030 050 59  000 030 57  020  040  000   1  100  050
i2 [$s51.+07.000] 01.000 020  8.00 6.00 58  100 001 57  099 099 57  000 000 57  000 200 57  0.040 0.010 57  100 040 57  030 050 59  000 030 57  020  040  000   1  100  050
i2 [$s51.+09.000] 01.000 020  8.00 6.00 58  100 001 57  099 099 57  000 000 57  000 200 57  0.040 0.010 57  100 040 57  030 050 59  000 030 57  020  040  000   1  100  050
i2 [$s51.+11.000] 01.000 020  8.00 6.00 58  100 001 57  099 099 57  000 000 57  000 200 57  0.040 0.010 57  100 040 57  030 050 59  000 030 57  020  040  000   1  100  050
i2 [$s51.+13.000] 01.000 020  8.00 6.00 58  100 001 57  099 099 57  000 000 57  000 200 57  0.040 0.010 57  100 040 57  030 050 59  000 030 57  020  040  000   1  100  050
i2 [$s51.+15.000] 01.000 020  8.00 6.00 58  100 001 57  099 099 57  000 000 57  000 200 57  0.040 0.010 57  100 040 57  030 050 59  000 030 57  020  040  000   1  100  050
#
#define claps52(s52) #
i2 [$s52.+00.000] 01.000 020  8.00 6.00 58  100 001 57  099 099 57  000 000 57  000 200 57  0.040 0.010 57  100 040 57  030 050 59  000 030 57  020  040  000   1  100  050
#
#define claps511(s511) #
$claps51([$s511.+00])
$claps51([$s511.+16])
$claps51([$s511.+32])
$claps51([$s511.+48])
;__________|start.dur...vol|__|pitch.....|__|amp.....|__|filter..|__|res.....|__|distort.|__|seq.density.|__|sq.level|__|fl.level|__|seq.env.|__|at|_|pt|_|hp|_|w|_|ns|_|pn|#
#define bdrum61(s61) #
i2 [$s61.+00.000] 00.350 030  8.08 6.00 62  100 000 56  080 020 57  000 000 50  100 000 58  0.002 0.004 50  020 000 57  000 000 50  000 045 50  021  040  000   0  001  050
i2 [$s61.+01.000] 00.350 030  8.08 6.00 62  100 000 56  080 020 57  000 000 50  100 000 58  0.002 0.004 50  020 000 57  000 000 50  000 045 50  021  040  000   0  001  050
i2 [$s61.+02.000] 00.350 030  8.08 6.00 62  100 000 56  080 020 57  000 000 50  100 000 58  0.002 0.004 50  020 000 57  000 000 50  000 045 50  021  040  000   0  001  050
i2 [$s61.+03.000] 00.350 030  8.08 6.00 62  100 000 56  080 020 57  000 000 50  100 000 58  0.002 0.004 50  020 000 57  000 000 50  000 045 50  021  040  000   0  001  050
i2 [$s61.+04.000] 00.350 030  8.08 6.00 62  100 000 56  080 020 57  000 000 50  100 000 58  0.002 0.004 50  020 000 57  000 000 50  000 045 50  021  040  000   0  001  050
i2 [$s61.+05.000] 00.350 030  8.08 6.00 62  100 000 56  080 020 57  000 000 50  100 000 58  0.002 0.004 50  020 000 57  000 000 50  000 045 50  021  040  000   0  001  050
i2 [$s61.+06.000] 00.350 030  8.08 6.00 62  100 000 56  080 020 57  000 000 50  100 000 58  0.002 0.004 50  020 000 57  000 000 50  000 045 50  021  040  000   0  001  050
i2 [$s61.+07.000] 00.350 030  8.08 6.00 62  100 000 56  080 020 57  000 000 50  100 000 58  0.002 0.004 50  020 000 57  000 000 50  000 045 50  021  040  000   0  001  050
i2 [$s61.+08.000] 00.350 030  8.08 6.00 62  100 000 56  080 020 57  000 000 50  100 000 58  0.002 0.004 50  020 000 57  000 000 50  000 045 50  021  040  000   0  001  050
i2 [$s61.+09.000] 00.350 030  8.08 6.00 62  100 000 56  080 020 57  000 000 50  100 000 58  0.002 0.004 50  020 000 57  000 000 50  000 045 50  021  040  000   0  001  050
i2 [$s61.+10.000] 00.350 030  8.08 6.00 62  100 000 56  080 020 57  000 000 50  100 000 58  0.002 0.004 50  020 000 57  000 000 50  000 045 50  021  040  000   0  001  050
i2 [$s61.+11.000] 00.350 030  8.08 6.00 62  100 000 56  080 020 57  000 000 50  100 000 58  0.002 0.004 50  020 000 57  000 000 50  000 045 50  021  040  000   0  001  050
i2 [$s61.+12.000] 00.350 030  8.08 6.00 62  100 000 56  080 020 57  000 000 50  100 000 58  0.002 0.004 50  020 000 57  000 000 50  000 045 50  021  040  000   0  001  050
i2 [$s61.+13.000] 00.350 030  8.08 6.00 62  100 000 56  080 020 57  000 000 50  100 000 58  0.002 0.004 50  020 000 57  000 000 50  000 045 50  021  040  000   0  001  050
i2 [$s61.+14.000] 00.350 030  8.08 6.00 62  100 000 56  080 020 57  000 000 50  100 000 58  0.002 0.004 50  020 000 57  000 000 50  000 045 50  021  040  000   0  001  050
i2 [$s61.+15.000] 00.350 030  8.08 6.00 62  100 000 56  080 020 57  000 000 50  100 000 58  0.002 0.004 50  020 000 57  000 000 50  000 045 50  021  040  000   0  001  050
#
#define bdrum62(s62) #
i2 [$s62.+00.000] 00.350 035  8.08 6.00 62  100 000 56  080 020 57  000 000 50  100 000 58  0.002 0.004 50  020 000 57  000 000 50  000 045 50  021  040  000   0  001  050
#

#define bdrum611(s611) #
$bdrum61([$s611.+00])
$bdrum61([$s611.+16])
$bdrum61([$s611.+32])
$bdrum61([$s611.+48])
#
;__________|start.dur...vol|__|pitch.....|__|amp.....|__|filter..|__|res.....|__|distort.|__|seq.density.|__|sq.level|__|fl.level|__|seq.env.|__|at|_|pt|_|hp|_|w|_|ns|_|pn|#
#define kreuzblip71(s71) #
i2 [$s71.+00.000] 08.000 020  8.09 8.09 50  100 000 54  049 049 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s71.+05.500] 08.000 020  8.04 8.04 50  100 000 54  050 050 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s71.+07.000] 08.000 020  8.00 8.00 50  100 000 54  051 051 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s71.+08.000] 08.000 020  7.11 7.11 50  100 000 54  052 052 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s71.+13.500] 08.000 020  8.04 8.04 50  100 000 54  053 053 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s71.+15.000] 08.000 020  7.11 7.11 50  100 000 54  054 054 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s71.+16.000] 08.000 020  7.09 7.09 50  100 000 54  055 055 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s71.+21.000] 08.000 020  7.09 7.09 50  100 000 54  056 056 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s71.+21.500] 08.000 020  7.11 7.11 50  100 000 54  057 057 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s71.+22.500] 08.000 020  8.00 8.00 50  100 000 54  058 058 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s71.+23.500] 08.000 020  8.04 8.04 50  100 000 54  059 059 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
#
#define kreuzblip72(s72) #
i2 [$s72.+00.000] 08.000 020  8.09 8.09 50  100 000 54  048 048 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s72.+05.500] 08.000 020  8.04 8.04 50  100 000 54  049 049 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s72.+07.000] 08.000 020  8.00 8.00 50  100 000 54  050 050 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s72.+08.000] 08.000 020  7.11 7.11 50  100 000 54  051 051 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s72.+13.500] 08.000 020  8.04 8.04 50  100 000 54  052 052 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s72.+15.000] 08.000 020  7.11 7.11 50  100 000 54  053 053 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s72.+16.000] 08.000 020  7.09 7.09 50  100 000 54  054 054 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s72.+21.000] 08.000 020  7.09 7.09 50  100 000 54  055 055 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s72.+21.500] 08.000 020  8.09 8.09 50  100 000 54  056 056 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s72.+23.000] 08.000 020  8.07 8.07 50  100 000 54  057 057 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s72.+23.500] 08.000 020  8.09 8.09 50  100 000 54  058 058 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s72.+24.000] 08.000 020  8.04 8.04 50  100 000 54  059 059 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s72.+28.000] 08.000 020  8.11 8.11 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
#
;__________|start.dur...vol|__|pitch.....|__|amp.....|__|filter..|__|res.....|__|distort.|__|seq.density.|__|sq.level|__|fl.level|__|seq.env.|__|at|_|pt|_|hp|_|w|_|ns|_|pn|#
#define kreuzblip73(s73) #
i2 [$s73.+00.000] 08.000 020  8.09 8.09 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s73.+05.500] 08.000 020  8.04 8.04 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s73.+07.000] 08.000 020  8.00 8.00 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s73.+08.000] 08.000 020  7.11 7.11 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s73.+13.500] 08.000 020  8.04 8.04 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s73.+15.000] 08.000 020  7.11 7.11 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s73.+16.000] 08.000 020  7.09 7.09 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s73.+21.000] 08.000 020  7.09 7.09 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s73.+21.500] 08.000 020  7.11 7.11 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s73.+22.500] 08.000 020  8.00 8.00 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s73.+23.500] 08.000 020  8.04 8.04 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
#
#define kreuzblip74(s74) #
i2 [$s74.+00.000] 08.000 020  8.09 8.09 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s74.+05.500] 08.000 020  8.04 8.04 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s74.+07.000] 08.000 020  8.00 8.00 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s74.+08.000] 08.000 020  7.11 7.11 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s74.+13.500] 08.000 020  8.04 8.04 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s74.+15.000] 08.000 020  7.11 7.11 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s74.+16.000] 08.000 020  7.09 7.09 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s74.+21.000] 08.000 020  7.09 7.09 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s74.+21.500] 08.000 020  8.09 8.09 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s74.+23.000] 08.000 020  8.07 8.07 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s74.+23.500] 08.000 020  8.09 8.09 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s74.+24.000] 08.000 020  8.04 8.04 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
i2 [$s74.+28.000] 08.000 020  8.11 8.11 50  100 000 54  060 060 61  000 100 51  100 100 51  0.010 0.100 51  000 050 50  000 000 51  030 030 50  030  040  010   1  000  050
#
#define kreuzblip711(s711) #
$kreuzblip71([$s711.+00])
$kreuzblip72([$s711.+32])
#
#define kreuzblip712(s712) #
$kreuzblip73([$s712.+00])
$kreuzblip74([$s712.+32])
#
;__________|start.dur...vol|__|pitch.....|__|amp.....|__|filter..|__|res.....|__|distort.|__|seq.density.|__|sq.level|__|fl.level|__|seq.env.|__|at|_|pt|_|hp|_|w|_|ns|_|pn|#
#define snares81(s81) #
i2 [$s81.+00.000] 07.250 030  5.09 5.09 50  030 100 51  060 080 51  020 010 52  200 200 51  0.250 0.250 50  100 080 52  050 050 51  030 020 52  020  040  000   0  050  050
i2 [$s81.+04.125] 03.125 030  5.09 5.09 50  030 100 51  060 080 51  020 010 52  200 200 51  0.250 0.250 50  100 080 52  050 050 51  030 020 52  020  040  000   0  050  050
i2 [$s81.+08.000] 04.000 030  5.09 5.09 50  100 010 54  070 070 52  020 020 52  200 020 52  0.001 0.010 51  070 060 52  000 000 51  030 020 52  020  040  080   0  100  050
#
#define snares82(s82) #
i2 [$s82.+00.000] 01.000 030  5.09 5.09 50  010 100 51  070 070 52  020 020 52  020 200 51  0.010 0.001 52  060 070 51  000 000 51  020 030 51  020  040  080   0  100  050
i2 [$s82.+02.000] 04.000 030  5.09 5.09 50  100 010 54  070 070 52  020 020 52  200 020 52  0.001 0.010 51  070 060 52  000 000 51  030 020 52  020  040  080   0  100  050
#
;__________|start.dur...vol|__|pitch.....|__|amp.....|__|filter..|__|res.....|__|distort.|__|seq.density.|__|sq.level|__|fl.level|__|seq.env.|__|at|_|pt|_|hp|_|w|_|ns|_|pn|
#define highs91(s91) #
i2 [$s91.+00.000] 64.000 010  7.00 7.00 40  100 100 20  080 080 20  060 060 60  100 100 60  0.500 0.500 40  100 100 60  000 000 40  040 040 60  025  020  080   2  080  050
#
;###################################################
;   S O N G
;###################################################
;01
$blips111(00)
;02
$blips112(64)
$bass21(64)
;03
$ekoblip331(132)
$bass22(148)
$highs43(164)
$claps51(180)
;04
$blips112(196)
$bass21(196)
$highs41(196)
$claps511(196)
$bdrum611(196)
;05
$ekoblip333(260)
$blips112(260)
$bass21(260)
$highs41(260)
$claps511(260)
$bdrum611(260)
;06
$ekoblip334(324)
$blips112(324)
$bass22(324)
$highs42(324)
;07
$blips113(388)
$kreuzblip711(388)
$highs41(388)
;08
$blips112(452)
$bass21(452)
$highs41(452)
$claps511(452)
$bdrum611(452)
$kreuzblip712(452)
$highs91(452)
;05
$ekoblip333(516)
$blips112(516)
$bass21(516)
$highs41(516)
$claps511(516)
$bdrum611(516)
$kreuzblip712(516)
$highs91(516)
;06
$blips03(580)
$ekoblip34(580)
$bdrum62(580)
$claps52(580)
