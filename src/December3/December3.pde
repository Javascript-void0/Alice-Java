void setup() {
    size(700,700);
    String[] names = new String[4];
    names[0] = "help";
    names[1] = "me";
    names[2] = "please";
    names[3] = ":(";
    int r = (int) (Math.random()*4);
    fill(242,68,108);
    textSize(48);
    text(names[r], width/2, height/2);
}

void draw() {

}