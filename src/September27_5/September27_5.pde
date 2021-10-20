float x;
float y;
float angle;
float speed;

void setup() {
    size(700,700);
    angle = PI / 4;
    x = 0;
    y = 0;
    speed = 3;
}

void draw() {
    background(205);
    ellipse(x,y,30,30);
    x += cos(angle) * speed;
    y += sin(angle) * speed;
}