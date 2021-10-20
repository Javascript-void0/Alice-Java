size(1596,1568);
PImage img = loadImage("Rick.PNG");
noStroke();
for (int i = 0; i < 1000000; i++) {
    int x = (int)random(img.width);
    int y = (int)random(img.height);
    int c = img.get(x,y);
    fill(red(c),green(c),blue(c),10);
    circle(x*2,y*2,30);
}