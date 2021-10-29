import org.gicentre.handy.*;

HandyRenderer h;
PImage img;
int len;

void setup() {
    size(800,800);
    background(255);
    frameRate(24);
    h = new HandyRenderer(this);
    img = loadImage("Rick.PNG");
    len = 40;
}

void draw() {
    background(255);
    noStroke();
    for (int x = 0; x < width; x += len) {
        for (int y = 0; y < height; y += len) {
            int c = img.get(x,y);
            println(c);
            fill(c);
            // h.setRoughness(random(0.5,1.5));
            h.setRoughness(random(1,1.02));
            // h.setHachureAngle(random(38,52));
            h.setHachureAngle(random(0,180));
            h.setFillWeight(random(2,3));
            h.rect(x,y,len,len);
        }
    }
}