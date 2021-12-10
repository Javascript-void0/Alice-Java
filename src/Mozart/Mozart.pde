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
	// String extension = ".wav";   // Audacity
	String extension = "_.wav";   // piano recording from TEDAgame: https://freesound.org/people/TEDAgame/packs/25405/
	audios[0] = minim.loadFile("c4"  + extension);
	audios[1] = minim.loadFile("cs4" + extension);
	audios[2] = minim.loadFile("d4" + extension);
	audios[3] = minim.loadFile("ds4" + extension);
	audios[4] = minim.loadFile("e4" + extension);
	audios[5] = minim.loadFile("f4" + extension);
	audios[6] = minim.loadFile("fs4" + extension);
	audios[7] = minim.loadFile("g4" + extension);
	audios[8] = minim.loadFile("gs4" + extension);
	audios[9] = minim.loadFile("a4" + extension);
	audios[10] = minim.loadFile("as4" + extension);
	audios[11] = minim.loadFile("b4" + extension);
	audios[12] = minim.loadFile("c5" + extension);

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
