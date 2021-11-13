import processing.video.*;
Movie video;


void setup() {
    size(1080,1080);
    video = new Movie(this, "cat.mp4");
    video.loop();
}

void draw() {
    surface.setTitle("/src/data/cat.MP4 | FPS: " + floor(frameRate));
    noStroke();
    int r = 5;
    for (int x = 0; x < video.width; x += r) {
        for (int y = 0; y < video.height; y += r) {
            fill(video.get(x,y));
            rect(x,y,r,r);
        }
    }
}

void movieEvent(Movie m) {
    m.read();
    saveFrame();
}