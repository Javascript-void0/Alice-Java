float[] xVals;
float[] yVals;
float[] diams;
final int SIZE = 100;

void setup() {
    size(700,700);
    xVals = new float[SIZE];
    yVals = new float[SIZE];
    diams = new float[SIZE];
    for (int i = 0; i < SIZE; i++) {
        xVals[i] = random(width);
        yVals[i] = random(height);
        diams[i] = random(5,20);
    }
}

void draw() {
    background(205);
    noStroke();
    for (int i = 0; i < SIZE; i++) {
        ellipse(xVals[i], yVals[i], diams[i], diams[i]);
        xVals[i] += random(-1,1);
        yVals[i] += random(-1,1);
        diams[i] += random(-1,1);
    }
}