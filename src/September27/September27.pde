size(700,700);
float theta = 0;
float x;
float y;
int blue = 0;
int red = 255;
int numberOfJumps = 24;

for (int i = 0; i < numberOfJumps; i++) {
    x = (300 * cos(theta) + width / 2);
    y = (300 * sin(theta) + height / 2);
    fill(red,0,blue);
    ellipse(x,y,40,40);
    theta += (2 * PI) / numberOfJumps;
    blue += 10.625;
    red -= 10.625;
}