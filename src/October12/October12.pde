int numClicks;

void setup() {
    size(600,600);
    numClicks = 0;
}

void draw() {
    ellipse(width/2,height/2,300,300);
}
void mouseClicked() {
    numClicks += 1;
    if (numClicks % 5 == 0) {
        fill(random(256),random(256),random(256));
    }
}