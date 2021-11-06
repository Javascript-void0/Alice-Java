import org.gicentre.handy.*;
import processing.pdf.*;

HandyRenderer h;
PImage img;
ArrayList<Circle> circles;

void setup() {

    PGraphics pg = beginRecord(PDF,"rick.pdf");
    h = new HandyRenderer(this);
    h.setGraphics(pg);
    surface.setTitle("FPS" + frameRate);

    size(1500,1500);
    background(255);
    circles = new ArrayList<Circle>();
    img = loadImage("rick.jpg");
    boolean foundIntersection = false;
    int maxTries = 100;
    stroke(0);
    while (foundIntersection == false) {
        int j;
        for (j = 0; j < maxTries; j++) {
            int x = (int) random(width);
            int y = (int) random(height);
            int pColor = img.get(x,y);
            float bright = (red(pColor) + green(pColor) + blue(pColor))/3.0;
            float r = map(bright,0,255,1,5);
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
    background(255);
    for (int i = 0; i < circles.size(); i++) {
        Circle c = circles.get(i);
        fill(0);
        h.ellipse(c.x,c.y,3,3);
        circle(c.x,c.y,3);
    }

    endRecord();

}

// import org.gicentre.handy.*;
// import processing.pdf.*;

// HandyRenderer h;
// PImage img;
// ArrayList<Circle> circles;

// void setup() {

//     PGraphics pg = beginRecord(PDF,"portrait.pdf");
//     h = new HandyRenderer(this);
//     h.setGraphics(pg);
//     surface.setTitle("FPS" + frameCount);

//     size(500,500);
//     background(255);
//     circles = new ArrayList<Circle>();
//     img = loadImage("portrait.jpg");
//     boolean foundIntersection = false;
//     int maxTries = 500;
//     stroke(0);
//     while (foundIntersection == false) {
//         int j;
//         for (j = 0; j < maxTries; j++) {
//             int x = (int) random(width);
//             int y = (int) random(height);
//             int pColor = img.get(x,y);
//             float bright = (red(pColor) + green(pColor) + blue(pColor))/3.0;
//             float r = map(bright,0,255,0.5,3);
//             Circle c = new Circle(x,y,r);
//             boolean intersecting = false;
//             for (int k = 0; k < circles.size(); k++) {
//                 Circle cur = circles.get(k);
//                 if (c.isIntersecting(cur)) {
//                     intersecting = true;
//                 }
//             }
//             if (intersecting == false) {
//                 circles.add(c);
//                 break;
//             }
//         }
//         if (j == maxTries) {
//             foundIntersection = true;
//         }
//     }
//     background(255);
//     for (int i = 0; i < circles.size(); i++) {
//         Circle c = circles.get(i);
//         fill(0);
//         h.ellipse(c.x,c.y,0.5,0.5);
//         circle(c.x,c.y,3);
//     }

//     endRecord();

// }