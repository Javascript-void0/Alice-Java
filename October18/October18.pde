import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioOutput ao;
SineWave sw;
SineWave sw2;

void setup() {
    size(1800,800);
    minim = new Minim(this);
    ao = minim.getLineOut();
    sw = new SineWave(440,0.1,44100);
    sw.portamento(100);
    ao.addSignal(sw);
    textSize(24);
}

void draw() {

    fill(0);
    line(261.6256, 10, 261.6256, height-10);
    text("C4", 261.6256+5, height-10);
    line(349.2282, 10, 349.2282, height-10);
    text("F4", 349.2282+5, height-10);
    line(391.9954, 10, 391.9954, height-10);
    text("G4", 391.9954+5, height-10);
    line(523.2511, 10, 523.2511, height-10);
    text("C5", 523.2511+5, height-10);

    sw.setFreq(mouseX);
}
