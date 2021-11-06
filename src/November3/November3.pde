import processing.pdf.*;

// >>> output.pdf

// void setup() {
//     size(700,700);
//     beginRecord(PDF,"output.pdf");
//     background(29,233,208);
//     fill(100,38,209);
//     ellipse(width/2,height/2,400,400);
//     endRecord();
// }

// >>> output2.pdf

void setup() {
    size(700,700);
    beginRecord(PDF,"output2.pdf");
}

void draw() {
    fill(0,0,random(50,255));
    ellipse(random(width),random(height),50,50);
}

void mouseClicked() {
    endRecord();
}
