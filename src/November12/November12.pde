import processing.video.*;

ArrayList<Circle> circles;
Movie video;

void setup() {
    size(600,600);
    video = new Movie(this, "video.mp4");
    video.loop();
    video.frameRate(8);
    circles = new ArrayList<Circle>();
}

void draw() {
    println(frameCount);
    surface.setTitle("/src/data/video.MP4 | FPS: " + floor(frameRate));
    noStroke();
    final int maxTries = 500;
    boolean foundIntersection = false;
    while (foundIntersection == false) {
        int j;
        for (j = 0; j < maxTries; j++) {
            int x = (int) random(width);
            int y = (int) random(height);
            int pColor = video.get(x,y);
            float bright = (red(pColor) + green(pColor) + blue(pColor))/3.0;
            float r = map(bright,0,255,2,7);
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
        circle(c.x,c.y,5);
    }
    circles.clear();
}

void movieEvent(Movie m) {
    m.read();
}