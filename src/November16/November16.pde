float[] xVals;
float[] yVals;
float[] diams;
int[] colors;
final int SIZE = 100;

void setup() {
    size(700,700);
    xVals = new float[SIZE];
    yVals = new float[SIZE];
    diams = new float[SIZE];
    colors = new int[SIZE];
    for (int i = 0; i < SIZE; i++) {
        xVals[i] = random(width);
        yVals[i] = random(height);
        diams[i] = random(5,20);
        float r = random(256);
        float g = random(256);
        float b = random(256);
        colors[i] = color(r, g, b);
    }
}

void draw() {
    background(205);
    noStroke();
    for (int i = 0; i < SIZE; i++) {
        xVals[i] += random(-1,1);
        yVals[i] += random(-1,1);
        diams[i] += random(-1,1);
        fill(colors[i]);
        ellipse(xVals[i], yVals[i], diams[i], diams[i]);
    }
}