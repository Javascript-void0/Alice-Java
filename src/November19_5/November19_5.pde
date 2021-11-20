float[] xVals;
float[] yVals;
float[] diams;
int[] colors;
final int SIZE = 30;

boolean intersecting(float x1, float y1, float r1, float x2, float y2, float r2) {
    float d = dist(x1, y1, x2, y2);
    if (d <= (r1 + r2)) {
        return true;
    }
    return false;
}

void setup() {
    background(0);
    size(400,400);
    stroke(255);
    strokeWeight(0.25);
    xVals = new float[SIZE];
    yVals = new float[SIZE];
    diams = new float[SIZE];
    colors = new int[SIZE];
    for (int i = 0; i < SIZE; i++) {
        xVals[i] = random(width);
        yVals[i] = random(height);
        diams[i] = random(50,100);
        float r = random(256);
        float g = random(256);
        float b = random(256);
        colors[i] = color(r, g, b);
    }
}

void draw() {
    background(0);
    surface.setTitle("/src/November19_5.pde | FPS: " + floor(frameRate));
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            if (intersecting(xVals[i], yVals[i], diams[i] / 2, xVals[j], yVals[j], diams[j] / 2) == true) {
                if (dist(xVals[i], yVals[i], xVals[j], yVals[j]) > 40) {
                    stroke(255,0,0);
                } else {
                    stroke(0, 255, 0);
                }
                line(xVals[i], yVals[i], xVals[j], yVals[j]);
            }
        }
        ellipse(xVals[i], yVals[i], 3, 3);

        xVals[i] += random(-1,1);
        yVals[i] += random(-1,1);
        diams[i] += random(-1,1);
    }
}
