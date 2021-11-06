// import processing.video.*;
// Movie video;

// void setup() {
//     size(600,600);
//     video = new Movie(this, "video.mp4");
//     video.loop();
//     surface.setTitle("FPS" + frameRate);
// }

// void draw() {
//     background(205);
//     image(video,0,0);
// }

// void movieEvent(Movie m) {
//     m.read();
// }

void setup() {
    size(700,700);
    frameRate(5);
}

void draw() {
    fill(0,random(50,255),0);
    ellipse(random(width),random(height),20,20);
    saveFrame();
}