float[] xVals;
float[] yVals;
float[] diams;
int[] colors;
float angle;
float angle2;

PImage img;
int[] paintColors;

final int SIZE = 50;

boolean intersecting(float x1, float y1, float r1, float x2, float y2, float r2) {
    float d = dist(x1,y1,x2,y2);
    if (d <= r1+r2) {
        return true;
    } else {
        return false;
    }
}

void setup() {
    size(1600,900);

    img = loadImage("micro.jpg");
    paintColors = new int[1000];
    for (int i = 0; i < paintColors.length; i++) {
        paintColors[i] = img.get((int) random(img.width), (int) random(img.height));
    }

    background(0);
    stroke(255);
    strokeWeight(0.25);
    angle = 0;
    angle2 = 0;
    xVals = new float[SIZE];
    yVals = new float[SIZE];
    diams = new float[SIZE];
    colors = new int[SIZE];
    for (int k = 0; k < SIZE; k++) {
        xVals[k] = random(width);
        yVals[k] = random(height);
        diams[k] = random(5,20);
        colors[k] = paintColors[(int) random(paintColors.length)];
    }
}

void draw() {
    angle += 0.01;
    angle2 += 0.02;
    for (int k = 0; k < SIZE; k++) {
        for (int j = 0; j < SIZE; j++) {
            if (intersecting(xVals[k],yVals[k],diams[k]/2,xVals[j],yVals[j],diams[j]/2) == true) {
                stroke(paintColors[(int) random(paintColors.length)]);
                strokeWeight(.25*sin(angle2) + 0.25);
                line(xVals[k],yVals[k],xVals[j],yVals[j]);
                xVals[k] += random(-5,5);
                yVals[k] += random(-5,5);
                xVals[j] += random(-5,5);
                yVals[j] += random(-5,5);
            }
        }
        xVals[k] += random(-1,1);
        yVals[k] += random(-1,1);
        diams[k] += random(-5,5);
    }
}
