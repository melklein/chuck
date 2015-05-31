SinOsc t => dac;

50 => int counter;
1 => int up;
100 => int speed;

while(true) {
  counter => int for_t;
  Std.mtof(for_t) => t.freq;
  speed::ms => now;

  if (counter == 90) {
    0 => up;
  }
  else if (counter == 50) {
    1 => up;
  }

  if (up == 1) {
    counter++;
  }
  else {
    counter--;
  }
}

