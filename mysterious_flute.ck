SinOsc osc => Envelope e => dac;
TriOsc to => e;

to.gain(0.5);
osc.gain(0.5);

55 => int Q;
80 => int base;

fun void play(int f, dur d)
{
  Std.mtof(f) => osc.freq;
  e.keyOn();
  d => now;
  e.keyOff();
  50::ms => now;
}


while(true) {
  Math.random2(0,9) + base => int first_note;
  Math.random2(0,9) + base => int second_note;

  play(first_note, (Q*2)::ms);
  play(second_note, (Q/2)::ms);
  play(first_note, (Q*2)::ms);
}

