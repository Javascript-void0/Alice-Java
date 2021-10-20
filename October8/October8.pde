long time1;
boolean mouseHasBeenClicked;

void setup() {
    size(600,600);
    mouseHasBeenClicked = false;
}

void draw() {
    if (mouseHasBeenClicked == true) {
        long time2 = System.currentTimeMillis();
        if (time2 >= time1 + 2000) {
            ellipse(width/2,height/2,200,200);
        }
    }
}

void mousePressed() {
    time1 = System.currentTimeMillis();
    mouseHasBeenClicked = true;
}