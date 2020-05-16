BEGIN{
b=0;
u=0;
c=0;
out;
}

/unit/ {u=$3}
/base/ {b=$3}
/output/{
out = $3

print "<CsoundSynthesizer>"

print "<CsOptions>"
print "-+rtaudio=alsa -odac:hw:1,0"
print "-o",out,"-W"
print "</CsOptions>"

print "<CsInstruments>"
print "sr=44100"
print "ksmps=64"
print "nchnls=2" #number of channels
print "0dbfs=1"


print "instr 16" #lower sa
print "kamp line 1,p3,0.5" #decreases amplitude from 100% to 50%
print "asig oscil 0.5,",b #amplitude = 0.5 and frequency = 330
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 17" #lower re
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",1.125*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 18" #lower ga
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",1.25*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 19" #lower ma
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",1.333*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 20" #lower pa
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",1.5*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 21" #lower dha
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",1.667*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 22" #lower ni
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",1.833*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 1" #sa
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",2*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 2" #re
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",2.25*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 3" #ga
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",2.5*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 4" #ma
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",2.666*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 5" #pa
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",3*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 6" #dha
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",3.334*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 7" #ni
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",3.666*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 8" #upper sa
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",4*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"


print "instr 9" #upper re
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",4.5*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 10" #fading upper ga
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",5*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 11" #fading upper ma
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",5.332*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 12" #fading upper pa
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",6*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 13" #fading upper dha
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",6.668*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 14" #fading upper ni
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",7.332*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 15" #fading upper upper sa
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",8*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 23" #lower minor re
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",1.067*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 24" #lower minor ga
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",1.2*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 25" #lower minor dha
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",1.6*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 26" #minor ni
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",1.75*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 27" #minor re
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",2*1.067*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 28" #minor ga
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",2*1.2*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 29" #minor dha
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",2*1.6*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 30" #minor ni
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",2*1.75*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 31" #lower minor re
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",4*1.067*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 32" #lower minor ga
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",4*1.2*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 33" #lower minor dha
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",4*1.6*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "instr 34" #lower minor ni
print "kamp line 1,p3,0.5"
print "asig oscil 0.5,",4*1.75*b
print "aout = asig * kamp"
print "outs aout, aout"
print "endin"

print "</CsInstruments>"
print "<CsScore>"
print "f1 0 16384 10 1"
}

/^S_/{print "i16 ",c,$2,"1"; c=c+$2}
/^R_/{print "i17 ",c,$2,"1"; c=c+$2}
/^r_/{print "i23 ",c,$2,"1"; c=c+$2}
/^G_/{print "i18 ",c,$2,"1"; c=c+$2}
/^g_/{print "i24 ",c,$2,"1"; c=c+$2}
/^M_/{print "i19 ",c,$2,"1"; c=c+$2}
/^P_/{print "i20 ",c,$2,"1"; c=c+$2}
/^D_/{print "i21 ",c,$2,"1"; c=c+$2}
/^d_/{print "i25 ",c,$2,"1"; c=c+$2}
/^N_/{print "i22 ",c,$2,"1"; c=c+$2}
/^n_/{print "i26 ",c,$2,"1"; c=c+$2}
/^S[\ ]/{print "i1 ",c,$2,"1"; c=c+$2}
/^R[\ ]/{print "i2 ",c,$2,"1"; c=c+$2}
/^r[\ ]/{print "i27 ",c,$2,"1"; c=c+$2}
/^G[\ ]/{print "i3 ",c,$2,"1"; c=c+$2}
/^g[\ ]/{print "i28 ",c,$2,"1"; c=c+$2}
/^M[\ ]/{print "i4 ",c,$2,"1"; c=c+$2}
/^P[\ ]/{print "i5 ",c,$2,"1"; c=c+$2}
/^D[\ ]/{print "i6 ",c,$2,"1"; c=c+$2}
/^d[\ ]/{print "i29 ",c,$2,"1"; c=c+$2}
/^N[\ ]/{print "i7 ",c,$2,"1"; c=c+$2}
/^n[\ ]/{print "i30 ",c,$2,"1"; c=c+$2}
/^S[\^]/{print "i8 ",c,$2,"1"; c=c+$2}
/^R[\^]/{print "i9 ",c,$2,"1"; c=c+$2}
/^r[\^]/{print "i31 ",c,$2,"1"; c=c+$2}
/^G[\^]/{print "i10 ",c,$2,"1"; c=c+$2}
/^g[\^]/{print "i32 ",c,$2,"1"; c=c+$2}
/^M[\^]/{print "i11 ",c,$2,"1"; c=c+$2}
/^P[\^]/{print "i12 ",c,$2,"1"; c=c+$2}
/^D[\^]/{print "i13 ",c,$2,"1"; c=c+$2}
/^d[\^]/{print "i33 ",c,$2,"1"; c=c+$2}
/^N[\^]/{print "i14 ",c,$2,"1"; c=c+$2}
/^r[\^]/{print "i34 ",c,$2,"1"; c=c+$2}


END{
print "</CsScore>"
print "</CsoundSynthesizer>"
}
