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
    final int r = 5;
    boolean inverse = false;
    for (int x = 0; x < video.width; x += r) {
        for (int y = 0; y < video.height; y += r) {
            for (int i = 7; i <= 12; i++) {
                if (frameCount % 30 == i) {
                    inverse = true;
                    int c = video.get(x,y);
                    fill(255-red(c), 255-green(c), 255-blue(c));
                }
                if (inverse == false) {
                    fill(video.get(x,y));
                }
            }
            rect(x,y,r,r);
        }
    }
}

void movieEvent(Movie m) {
    m.read();
}