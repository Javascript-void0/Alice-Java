PShape ps;
float x;
float y;

void setup() {
    size(1200,800);
    ps = createShape();
    x = 0;
    y = 0;
    ps.beginShape();
        for (int i = 0; i < 6; i++) {
            ps.vertex(random(width), random(height));
        }
        // ps.vertex(width/2,0);
        // ps.vertex(width,height/2);
        // ps.vertex(width/2,height);
        // ps.vertex(0,height/2);
    ps.endShape(CLOSE);
}

void draw() {
    background(205);
    shape(ps,x,y);
    x += random(-2,2);
    y += random(-2,2);
}