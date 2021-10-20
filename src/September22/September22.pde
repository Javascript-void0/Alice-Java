size(700,700);
background(0);

// for (int i = 0; i < 1000; i++) {
//     float x = random(width);
//     float y = random(height);
//     float d = random(5,40);
//     fill(random(256),random(256),random(256),random(256));
//     noStroke();
//     circle(x,y,d);
// }

PImage img = loadImage("VanGogh.jpg");

for (int i = 0; i < 1000; i ++) {
    float x = random(width);
    float y = random(height);
    float d = random(5,40);
    int c = img.get((int)random(img.width), (int)random(img.height));
    fill(c);
    noStroke();
    circle(x,y,d);
}