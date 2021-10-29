import org.gicentre.handy.*;

HandyRenderer h;
PImage img;
ArrayList<Circle> circles;

void setup() {
    size(800,800);
    circles = new ArrayList<Circle>();
    boolean foundIntersection = false;
    int maxTries = 1000;
    while (foundIntersection == false) {
        int j;
        for (j = 0; j < maxTries; j++) {
            Circle c = new Circle(random(width),random(height),random(5,25));
            boolean intersecting = false;
            for (int x = 0; x < circles.size(); x++) {
                Circle cur = circles.get(x);
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
        circle(c.x,c.y,2*c.r);
    }
}