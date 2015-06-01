Impulse imp => JCRev r=>  dac;
1 => imp.gain;

[5, 10, 15, 5, 5, 5] @=> int samples[];

while( true )
{
    samples[Math.random2(0, samples.cap() - 1)] => imp.next;
    Math.random2(2500, 4000)::ms => now;
}

