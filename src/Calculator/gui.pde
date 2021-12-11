public void button1_click1(GButton source, GEvent event) {
	input("5");
}

public void button2_click1(GButton source, GEvent event) {
	input("7");
}

public void button3_click1(GButton source, GEvent event) {
	input("6");
}

public void button4_click1(GButton source, GEvent event) {
	if (textfield1.getText() != "" && textfield1.getText() != "Calculator") {
		eval();
	}
}

public void button5_click1(GButton source, GEvent event) {
	if (textfield1.getText() != "" && textfield1.getText() != "Calculator") {
		if (operation == 0) {
			input(" * ");
			operation = 3;
		}
	}
}

public void button6_click1(GButton source, GEvent event) {
	input("4");
}

public void button7_click1(GButton source, GEvent event) {
	input("1");
}

public void button8_click1(GButton source, GEvent event) {
	input("2");
}

public void button9_click1(GButton source, GEvent event) {
	input("3");
}

public void button10_click1(GButton source, GEvent event) {
	input("0");
}

public void button11_click1(GButton source, GEvent event) {
	input("8");
}

public void button12_click1(GButton source, GEvent event) {
	input("9");
}

public void button13_click1(GButton source, GEvent event) {
	if (textfield1.getText() != "" && textfield1.getText() != "Calculator") {
		if (operation == 0) {
			input(" / ");
			operation = 4;
		}
	}
}

public void button14_click1(GButton source, GEvent event) {
	if (textfield1.getText() != "" && textfield1.getText() != "Calculator") {
		if (operation == 0) {
			input(" - ");
			operation = 2;
		}
	}
}

public void button15_click1(GButton source, GEvent event) {
	if (textfield1.getText() != "" && textfield1.getText() != "Calculator") {
		if (operation == 0) {
			input(" + ");
			operation = 1;
		}
	}
}

public void button16_click1(GButton source, GEvent event) {
	clear();
}

public void button16_click2(GButton source, GEvent event) {

}

public void textfield1_change1(GTextField source, GEvent event) {
	textfield1.setText(textfield1.getText());
}

public void createGUI(){
	G4P.messagesEnabled(false);
	G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
	G4P.setMouseOverEnabled(false);
	surface.setTitle("Sketch Window");
	button1 = new GButton(this, 80, 160, 50, 60);
	button1.setText("5");
	button1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
	button1.addEventHandler(this, "button1_click1");
	button2 = new GButton(this, 20, 90, 50, 60);
	button2.setText("7");
	button2.setLocalColorScheme(GCScheme.CYAN_SCHEME);
	button2.addEventHandler(this, "button2_click1");
	button3 = new GButton(this, 140, 160, 50, 60);
	button3.setText("6");
	button3.setLocalColorScheme(GCScheme.CYAN_SCHEME);
	button3.addEventHandler(this, "button3_click1");
	button4 = new GButton(this, 140, 300, 50, 60);
	button4.setText("=");
	button4.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
	button4.addEventHandler(this, "button4_click1");
	button5 = new GButton(this, 200, 230, 50, 60);
	button5.setText("*");
	button5.addEventHandler(this, "button5_click1");
	button6 = new GButton(this, 20, 160, 50, 60);
	button6.setText("4");
	button6.setLocalColorScheme(GCScheme.CYAN_SCHEME);
	button6.addEventHandler(this, "button6_click1");
	button7 = new GButton(this, 20, 230, 50, 60);
	button7.setText("1");
	button7.setLocalColorScheme(GCScheme.CYAN_SCHEME);
	button7.addEventHandler(this, "button7_click1");
	button8 = new GButton(this, 80, 230, 50, 60);
	button8.setText("2");
	button8.setLocalColorScheme(GCScheme.CYAN_SCHEME);
	button8.addEventHandler(this, "button8_click1");
	button9 = new GButton(this, 140, 230, 50, 60);
	button9.setText("3");
	button9.setLocalColorScheme(GCScheme.CYAN_SCHEME);
	button9.addEventHandler(this, "button9_click1");
	button10 = new GButton(this, 20, 300, 110, 60);
	button10.setText("0");
	button10.setLocalColorScheme(GCScheme.CYAN_SCHEME);
	button10.addEventHandler(this, "button10_click1");
	button11 = new GButton(this, 80, 90, 50, 60);
	button11.setText("8");
	button11.setLocalColorScheme(GCScheme.CYAN_SCHEME);
	button11.addEventHandler(this, "button11_click1");
	button12 = new GButton(this, 140, 90, 50, 60);
	button12.setText("9");
	button12.setLocalColorScheme(GCScheme.CYAN_SCHEME);
	button12.addEventHandler(this, "button12_click1");
	button13 = new GButton(this, 200, 300, 50, 60);
	button13.setText("/");
	button13.addEventHandler(this, "button13_click1");
	button14 = new GButton(this, 200, 160, 50, 60);
	button14.setText("-");
	button14.addEventHandler(this, "button14_click1");
	button15 = new GButton(this, 200, 90, 50, 60);
	button15.setText("+");
	button15.addEventHandler(this, "button15_click1");
	button16 = new GButton(this, 200, 20, 50, 60);
	button16.setText("C");
	button16.setLocalColorScheme(GCScheme.RED_SCHEME);
	button16.addEventHandler(this, "button16_click1");
	textfield1 = new GTextField(this, 20, 20, 170, 60, G4P.SCROLLBARS_HORIZONTAL_ONLY);
	textfield1.setText("Calculator");
	textfield1.setOpaque(true);
	textfield1.addEventHandler(this, "textfield1_change1");
}

GButton button1; 
GButton button2; 
GButton button3; 
GButton button4; 
GButton button5; 
GButton button6; 
GButton button7; 
GButton button8; 
GButton button9; 
GButton button10; 
GButton button11; 
GButton button12; 
GButton button13; 
GButton button14; 
GButton button15; 
GButton button16; 
GTextField textfield1; 
