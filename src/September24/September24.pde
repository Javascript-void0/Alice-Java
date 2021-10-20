size(735,713);
PImage img = loadImage("pop.jpg");
noStroke();
int jump = (int)random(10,70);
for (int x = 0; x < width; x += jump) {
    for (int y = 0; y < height; y += jump) {
        int c = img.get(x,y);
        fill(c);
        rect(x,y,jump,jump);
    }
}