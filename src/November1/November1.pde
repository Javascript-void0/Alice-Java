import org.gicentre.handy.*;

HandyRenderer h;
PImage img;
ArrayList<Circle> circles;

void setup() {
    size(1500,1500);
    circles = new ArrayList<Circle>();
    img = loadImage("rick.jpg");
    boolean foundIntersection = false;
    int maxTries = 500;
    stroke(0);
    while (foundIntersection == false) {
        int j;
        for (j = 0; j < maxTries; j++) {
            int x = (int) random(width);
            int y = (int) random(height);
            int pColor = img.get(x,y);
            float bright = (red(pColor) + green(pColor) + blue(pColor))/3.0;
            float r = map(bright,0,255,1,20);
            Circle c = new Circle(x,y,r);
            boolean intersecting = false;
            for (int k = 0; k < circles.size(); k++) {
                Circle cur = circles.get(k);
                if (c.isIntersecting(cur)) {
                    intersecting = true;
                }
            }
            if (intersecting == false) {
                circles.add(c);
                break;
            }
        }
        if (j == maxTries) {
            foundIntersection = true;
        }
    }
}

void draw() {
    background(205);
    for (int i = 0; i < circles.size(); i++) {
        Circle c = circles.get(i);
        fill(255);
        circle(c.x,c.y,2*c.r);
    }
}