ArrayList<PVector> flakes;

void setup() {
    size(1200,700);
    background(46,52,64);
    flakes = new ArrayList<PVector>();
    for (int i = 0; i < 1000; i++) {
        flakes.add(new PVector(random(width), random(-600,0)));
    }
}

void draw() {
    background(46,52,64);
    for (PVector flake: flakes) {
        if (flake.y <= height) {
            ellipse(flake.x, flake.y, 5, 5);
            flake.x += random(-2,2);
            flake.y += random(-0.5,2);
        }
    }
}