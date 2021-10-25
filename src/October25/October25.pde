import org.gicentre.handy.*;

HandyRenderer h;

void setup() {
    size(600,600);
    background(255);
    h = new HandyRenderer(this);
    fill(255,0,0);
    h.setRoughness(10);
    h.ellipse(width/2,height/2,500,300);
}

void draw() {

}