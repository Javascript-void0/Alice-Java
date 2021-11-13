import org.gicentre.handy.*;
import processing.video.*;

HandyRenderer handy;
Movie video;

void setup() {
    size(1080,1080);
    video = new Movie(this, "cat.mp4");
    handy = new HandyRenderer(this);

    // size(600,600);
    // video = new Movie(this, "video.mp4");
    video.loop();
    surface.setTitle("FPS" + frameRate);
}

void draw() {
    noStroke();
    for (int i = 0; i < 10000; i++) {
        int rx = (int) random(video.width);
        int ry = (int) random(video.height);
        int r = (int) random(4,7);
        handy.setHachureAngle(random(0,180));
        handy.setFillWeight(random(2,3));
        fill(video.get(rx,ry));
        handy.rect(rx,ry,r,r);
    }
}

void movieEvent(Movie m) {
    m.read();
}
