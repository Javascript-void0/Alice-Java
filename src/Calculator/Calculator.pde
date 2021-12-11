import g4p_controls.*;

int operation;
boolean answered;

void setup() {
	size(270,380);
	createGUI();
	operation = 0;
	answered = false;
}

void draw() {

}

void input(String c) {
	if (textfield1.getText() == "Calculator" || textfield1.getText() == "0") {
		clear();
	}
	if (answered == true && c != " + " && c != " * " && c != " - " && c != " / ") {
		clear();
	} else {

	} answered = false;
	String current = textfield1.getText();
	textfield1.setText(current + c);
}

void clear() {
	textfield1.setText("");
	operation = 0;
	answered = false;
}

void eval() {
	float result = 0;
	float[] nums = {0,0};
	String input = textfield1.getText();
	String[] split = input.split(" ");
	nums[0] = Float.parseFloat(split[0]);
	nums[1] = Float.parseFloat(split[2]);
	if (operation == 1) {
		result = nums[0] + nums[1];
	} else if (operation == 2) {
		result = nums[0] - nums[1];
	} else if (operation == 3) {
		result = nums[0] * nums[1];
	} else if (operation == 4) {
		result = nums[0] / nums[1];
	}
	textfield1.setText(Float.toString(result));
	operation = 0;
	answered = true;
}

void disableOperations() {
	button5.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
	button13.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
	button14.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
	button15.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
}