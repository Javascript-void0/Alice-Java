import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioOutput ao;
SineWave sw;
float angle;
float vDepth;
float vSpeed;
float characterY;

void setup() {
    size(1800,800);
    surface.setResizable(true);
    minim = new Minim(this);
    ao = minim.getLineOut();
    sw = new SineWave(440,0.1,44100);
    sw.portamento(50);
    textSize(24);
    angle = 0;
    vDepth = 50;
    vSpeed = 0.5;
    characterY = 0;
}

void draw() {
    background(205);
    surface.setTitle("FPS" + frameCount);
    fill(0);
    line(261.6256, 10, 261.6256, height-10);
    text("C4", 261.6256+5, height-10);
    line(349.2282, 10, 349.2282, height-10);
    text("F4", 349.2282+5, height-10);
    line(391.9954, 10, 391.9954, height-10);
    text("G4", 391.9954+5, height-10);
    line(523.2511, 10, 523.2511, height-10);
    text("C5", 523.2511+5, height-10);
    vDepth = map(mouseY,0,height,0,100);
    sw.setFreq(mouseX + sin(angle) * vDepth);
    angle += vSpeed;

    fill(105,130,188);
    circle(3*width/4,characterY + 50,100);
    fill(255);
    circle(3*width/4-30,characterY + 30,20);
    circle(3*width/4+30,characterY + 30,20);
    fill(0);
    circle(3*width/4-30,characterY + 32,10);
    circle(3*width/4+30,characterY + 32,10);
    arc(3*width/4,characterY + 50,75,mouseY/4,0,PI);
    if (characterY != 0) {
        characterY -= 10;
    }
}

void mousePressed() {
    ao.addSignal(sw);
    characterY = height / 2;
}

void mouseReleased() {
    ao.removeSignal(sw);
}

void keyPressed() {
    if (key == 'q') {
    }
}