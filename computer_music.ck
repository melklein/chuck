SinOsc s => dac;
SinOsc q => dac;
SinOsc t => dac;

while(true) {
  Math.random2(40,60) => int for_s;
  Math.random2(70,90) => int for_q;
  Math.random2(10,30) => int for_t;

  Std.mtof(for_s) => s.freq;
  Std.mtof(for_q) => q.freq;
  Std.mtof(for_t) => t.freq;

  Math.random2(5,10) * 0.1 => float g_for_s;
  Math.random2(5,10) * 0.1 => float g_for_q;
  Math.random2(5,10) * 0.1 => float g_for_t;

  q.gain(g_for_q);
  s.gain(g_for_s);
  t.gain(g_for_t);

  50::ms => now;
}

