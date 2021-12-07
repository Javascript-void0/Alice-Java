import g4p_controls.*;
import ddf.minim.*;

Minim minim;
AudioPlayer[] audios;
int r1;
int r2;
int diff;

public void setup() {
	size(300, 550);
	createGUI();
	minim = new Minim(this);
	audios = new AudioPlayer[13];
	audios[0] = minim.loadFile("c4.wav");
	audios[1] = minim.loadFile("cs4.wav");
	audios[2] = minim.loadFile("d4.wav");
	audios[3] = minim.loadFile("ds4.wav");
	audios[4] = minim.loadFile("e4.wav");
	audios[5] = minim.loadFile("f4.wav");
	audios[6] = minim.loadFile("fs4.wav");
	audios[7] = minim.loadFile("g4.wav");
	audios[8] = minim.loadFile("gs4.wav");
	audios[9] = minim.loadFile("a4.wav");
	audios[10] = minim.loadFile("as4.wav");
	audios[11] = minim.loadFile("b4.wav");
	audios[12] = minim.loadFile("c5.wav");

	generateNewSet();

}

public void generateNewSet() {
	r1 = (int) (Math.random()*audios.length);
	r2 = (int) (Math.random()*audios.length);
	diff = abs(r1 - r2);
    surface.setTitle("( " + r1 + " -> " + r2 + " )");
}

public void correctAnswer() {
	textarea1.setText("That's correct! Generated new set. ");
	generateNewSet();
}

public void draw() {
	background(230);
}
