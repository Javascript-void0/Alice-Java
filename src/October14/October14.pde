import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim mini;
AudioPlayer ap;
float rSize;

void setup() {
    size(600,600);
    mini = new Minim(this);
    ap = mini.loadFile("Kalimba.wav",1024);
    ap.play();
    rectMode(CENTER);
    rSize = 0;
}

void draw() {
    background(205);
    AudioBuffer ab = ap.left;
    float total = 400.0;
    for (int i = 0; i < ap.bufferSize(); i++) {
        total += ab.get(i) / 3;
    }
    if (rSize > 400) {
        rSize = 0;
    }
    rSize += 5;
    float angle = map(total,-200,200,0,2*PI);
    fill(255);
    noStroke();
    pushMatrix();
    translate(width/2,height/2);
    rotate(angle);
    rect(0,0,rSize,rSize);
    popMatrix();
}