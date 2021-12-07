public void button1_click(GButton source, GEvent event) {
	audios[r1].play();
	audios[r1].rewind();
}

public void button2_click(GButton source, GEvent event) {
	audios[r2].play();
	audios[r2].rewind();
}

public void button3_click1(GButton source, GEvent event) {
	if (option1.isSelected() && diff == 0) {
		correctAnswer();
	} else if (option2.isSelected() && diff == 1) {
		correctAnswer();
	} else if (option3.isSelected() && diff == 2) {
		correctAnswer();
	} else if (option4.isSelected() && diff == 3) {
		correctAnswer();
	} else if (option5.isSelected() && diff == 4) {
		correctAnswer();
	} else if (option6.isSelected() && diff == 5) {
		correctAnswer();
	} else if (option7.isSelected() && diff == 6) {
		correctAnswer();
	} else if (option8.isSelected() && diff == 7) {
		correctAnswer();
	} else if (option9.isSelected() && diff == 8) {
		correctAnswer();
	} else if (option10.isSelected() && diff == 9) {
		correctAnswer();
	} else if (option11.isSelected() && diff == 10) {
		correctAnswer();
	} else if (option12.isSelected() && diff == 11) {
		correctAnswer();
	} else if (option13.isSelected() && diff == 12) {
		correctAnswer();
	} else {
		textarea1.setText("Sorry, try again. ");
	}
}

public void option1_clicked(GOption source, GEvent event) {
	textarea1.setText("");
}

public void option2_clicked(GOption source, GEvent event) {
	textarea1.setText("");
}

public void option3clicked(GOption source, GEvent event) {
	textarea1.setText("");
}

public void option4_clicked(GOption source, GEvent event) {
	textarea1.setText("");
}

public void option5_clicked(GOption source, GEvent event) {
	textarea1.setText("");
}

public void option6_clicked(GOption source, GEvent event) {
	textarea1.setText("");
}

public void option7_clicked(GOption source, GEvent event) {
	textarea1.setText("");
}

public void option8_clicked(GOption source, GEvent event) {
	textarea1.setText("");
}

public void option9_clicked(GOption source, GEvent event) {
	textarea1.setText("");
}

public void option10_clicked(GOption source, GEvent event) {
	textarea1.setText("");
}

public void option11_clicked(GOption source, GEvent event) {
	textarea1.setText("");
}

public void option12_clicked(GOption source, GEvent event) {
	textarea1.setText("");
}

public void option13_clicked(GOption source, GEvent event) {
	textarea1.setText("");
}

public void textarea1_change1(GTextArea source, GEvent event) {

}

public void createGUI(){
	G4P.messagesEnabled(false);
	G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
	G4P.setMouseOverEnabled(false);
	surface.setTitle("Sketch Window");
	button1 = new GButton(this, 20, 20, 260, 80);
	button1.setText("Play First Note");
	button1.setLocalColorScheme(GCScheme.GREEN_SCHEME);
	button1.addEventHandler(this, "button1_click");
	button2 = new GButton(this, 20, 110, 260, 80);
	button2.setText("Play Second Note");
	button2.setLocalColorScheme(GCScheme.CYAN_SCHEME);
	button2.addEventHandler(this, "button2_click");
	button3 = new GButton(this, 20, 450, 260, 80);
	button3.setText("Submit");
	button3.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
	button3.addEventHandler(this, "button3_click1");
	togGroup1 = new GToggleGroup();
	option1 = new GOption(this, 20, 210, 120, 20);
	option1.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
	option1.setText("Perfect Unison");
	option1.setOpaque(false);
	option1.addEventHandler(this, "option1_clicked");
	option2 = new GOption(this, 160, 210, 120, 20);
	option2.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
	option2.setText("Minor Second");
	option2.setOpaque(false);
	option2.addEventHandler(this, "option2_clicked");
	option3 = new GOption(this, 20, 240, 120, 20);
	option3.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
	option3.setText("Major Second");
	option3.setOpaque(false);
	option3.addEventHandler(this, "option3_clicked");
	option4 = new GOption(this, 160, 240, 120, 20);
	option4.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
	option4.setText("Minor Third");
	option4.setOpaque(false);
	option4.addEventHandler(this, "option4_clicked");
	option5 = new GOption(this, 20, 270, 120, 20);
	option5.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
	option5.setText("Major Third");
	option5.setOpaque(false);
	option5.addEventHandler(this, "option5_clicked");
	option6 = new GOption(this, 160, 270, 120, 20);
	option6.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
	option6.setText("Perfect Fourth");
	option6.setOpaque(false);
	option6.addEventHandler(this, "option6_clicked");
	option7 = new GOption(this, 20, 300, 130, 20);
	option7.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
	option7.setText("Augmented Fourth");
	option7.setOpaque(false);
	option7.addEventHandler(this, "option7clicked");
	option8 = new GOption(this, 160, 300, 120, 20);
	option8.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
	option8.setText("Perfect Fifth");
	option8.setOpaque(false);
	option8.addEventHandler(this, "option8_clicked");
	option9 = new GOption(this, 20, 330, 120, 20);
	option9.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
	option9.setText("Minor Sixth");
	option9.setOpaque(false);
	option9.addEventHandler(this, "option9_clicked");
	option10 = new GOption(this, 160, 330, 120, 20);
	option10.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
	option10.setText("Major Sixth");
	option10.setOpaque(false);
	option10.addEventHandler(this, "option10_clicked");
	option11 = new GOption(this, 20, 360, 120, 20);
	option11.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
	option11.setText("Minor Seventh");
	option11.setOpaque(false);
	option11.addEventHandler(this, "option11_clicked");
	option12 = new GOption(this, 160, 360, 120, 20);
	option12.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
	option12.setText("Major Seventh");
	option12.setOpaque(false);
	option12.addEventHandler(this, "option12_clicked");
	option13 = new GOption(this, 20, 390, 120, 20);
	option13.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
	option13.setText("Perfect Octave");
	option13.setOpaque(false);
	option13.addEventHandler(this, "option13_clicked");
	togGroup1.addControl(option1);
	togGroup1.addControl(option2);
	togGroup1.addControl(option3);
	togGroup1.addControl(option4);
	togGroup1.addControl(option5);
	togGroup1.addControl(option6);
	togGroup1.addControl(option7);
	togGroup1.addControl(option8);
	togGroup1.addControl(option9);
	togGroup1.addControl(option10);
	togGroup1.addControl(option11);
	togGroup1.addControl(option12);
	togGroup1.addControl(option13);
	option1.setSelected(true);
	textarea1 = new GTextArea(this, 160, 390, 120, 40, G4P.SCROLLBARS_NONE);
	textarea1.setText(" Good luck :3");
	textarea1.setLocalColorScheme(GCScheme.RED_SCHEME);
	textarea1.setOpaque(true);
	textarea1.addEventHandler(this, "textarea1_change1");
}

GButton button1; 
GButton button2; 
GButton button3; 
GToggleGroup togGroup1; 
GOption option1; 
GOption option2; 
GOption option3; 
GOption option4; 
GOption option5; 
GOption option6; 
GOption option7; 
GOption option8; 
GOption option9; 
GOption option10; 
GOption option11; 
GOption option12; 
GOption option13; 
GTextArea textarea1; 
