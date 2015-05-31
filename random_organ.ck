SinOsc osc => Envelope e => dac;
TriOsc to => e;
TriOsc to2 => e;
to.gain(0.3);
to2.gain(0.1);
osc.gain(1);

250 => int Q;

fun void play(int f, dur d)
{
  Std.mtof(f) => osc.freq;
  Std.mtof(f) / 2 => to.freq;
  Std.mtof(f) * 2 => to2.freq;
  e.keyOn();
  d => now;
  e.keyOff();
  50::ms => now;
}


while(true) {
  (10*Math.random2(6,7)) => int base;
  [
    base+5, base+5, base+2,
    base+4, base+3, base+3,
    base+3, 0
  ] @=> int notes[];

  Math.random2(0, notes.cap() - 1) => int i;
  Math.random2(0, notes.cap() - 1) => int j;

  play(notes[i], (Q*2)::ms);
  play(notes[j], (Q*2)::ms);
  play(notes[j], (Q/2)::ms);
  play(notes[i], (Q/2)::ms);
}

