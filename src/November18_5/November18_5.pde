float[] xVals;
float[] yVals;
float[] diams;
int[] colors;
final int SIZE = 20;

void setup() {
    background(0);
    size(1200,800);
    stroke(255);
    strokeWeight(0.5);
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
    background(0);
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            line(xVals[i], yVals[i], xVals[j], yVals[j]);
        }
        xVals[i] += random(-1,1);
        yVals[i] += random(-1,1);
        diams[i] += random(-1,1);
    }
}