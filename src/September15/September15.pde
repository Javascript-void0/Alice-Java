size(600,600);

// 5 Row

// int p = 10;
// int diam = 72;
// for (int j = 0; j < 5; j++) {
//     ellipse(p+100,100,diam,diam);
//     p += diam;
// }

// Blue Nesting

// noFill();
// stroke(0,0,255);
// for (int i = 1; i < 500; i+=10) {
//     ellipse(300,300,i,i);
// }

// 12 Column

fill(255,0,0);
stroke(0,0,255);
strokeWeight(3);
int z = 10;
for (int i = 1; i < 12; i++) {
    ellipse(20,z+10,20,20);
    z += 25;
}

// Diagonal Green > Blue 

// float blue = 0;
// float green = 255;
// int x = 10;
// int y = 10;
// stroke(0,50,50);
// strokeWeight(3);
// for (int i = 1; i < 20; i++) {
//     fill(0,green,blue);
//     ellipse(x+10,y+10,20,20);
//     y += 30;
//     x += 30;
//     green -= 12.75;
//     blue += 12.75;
// }

// Old Circles Around A Circle

// int blue = 255;
// int red = 0;
// int angle = 0;
// int radius = 200;
// stroke(0,0,0);
// strokeWeight(0);
// for (int i = 0; i < 24; i++) {
//     float circumference = 2 * PI * radius;
//     float interval = circumference / 24;
//     float x = (cos(angle) * radius) + 300;
//     float y = (sin(angle) * radius) + 300;
//     fill(red,0,blue);
//     ellipse(x,y,50,50);
//     blue -= 10.625;
//     red += 10.625;
//     angle += 15;
// }
// strokeWeight(10);
// point(300,300);

// Circles Around A Circle

int blue = 0;
int red = 255;
int radius = 200;
stroke(0);
strokeWeight(5);
for (int i = 1; i < 25; i++) {
    float interval = PI * radius / 26.1;
    float x = (cos(2 * PI / interval * -i) * radius) + 300;
    float y = (sin(2 * PI / interval * -i) * radius) + 300;
    fill(red,0,blue);
    ellipse(x,y,40,40);
    blue += 10.625;
    red -= 10.625;
}