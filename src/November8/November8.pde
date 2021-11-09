import processing.video.*;
Movie video;

void setup() {
    size(1080,1080);
    video = new Movie(this, "cat.mp4");
    // size(600,600);
    // video = new Movie(this, "video.mp4");
    video.loop();
    surface.setTitle("FPS" + frameRate);
}

void draw() {
    noStroke();
    int r = 5;
    for (int i = 0; i < 30000; i++) {
        int rx = (int) random(video.width);
        int ry = (int) random(video.height);
        fill(video.get(rx,ry));
        rect(rx,ry,r,r);
    }
}

void movieEvent(Movie m) {
    m.read();
}