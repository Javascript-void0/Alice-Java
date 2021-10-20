import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

float ballX;
float ballY;
float ballAngle;
float ballSpeed;
float ballSize;

float paddleX;
float paddleY;
float paddleWidth;
float paddleHeight;
float paddleOtherSideX;
float paddleOtherSideY;

float someOtherPaddleX;
float someOtherPaddleY;
float someOtherPaddleWidth;
float someOtherPaddleHeight;
float someOtherPaddleOtherSideX;
float someOtherPaddleOtherSideY;

int score;
int vscore;
int hscore;

Minim minim;
AudioPlayer bounce;
AudioPlayer paddle;
AudioPlayer bg_music;

void setup() {
    size(700,900);
    minim = new Minim(this);
    bounce = minim.loadFile("bounce.wav",512);
    paddle = minim.loadFile("paddle.wav",512);
    bg_music = minim.loadFile("background.wav",512);
    bg_music.loop();
    background(31,35,16);
    score = 19;
    vscore = 0;
    hscore = 0;

    ballX = width / 2;
    ballY = height / 2;
    ballAngle = random(2 * PI);
    ballSpeed = 5;
    ballSize = 12;

    paddleX = width / 2;
    paddleY = height - 50;
    paddleOtherSideX = width / 2;
    paddleOtherSideY = 50;
    paddleWidth = 100;
    paddleHeight = 10;

    someOtherPaddleX = 50;
    someOtherPaddleY = height / 2;
    someOtherPaddleOtherSideX = width - 50;
    someOtherPaddleOtherSideY = height / 2;
    someOtherPaddleWidth = 10;
    someOtherPaddleHeight = 100;

    textAlign(CENTER);
}

void draw() {
    background(43,51,33);
    noStroke();

    fill(73,81,63);
    rect(width/2,height/2,width-100,height-100);

    fill(83,91,73);
    textSize(100);
    text((int)score,width/2,height/2);
    textSize(30);
    text("Speed: " + ballSpeed,width/2,height/2 + 50);
    text("Width " + paddleWidth,width/2,height/2 + 100);
    textSize(50);
    text("V: " + vscore,width/2 - 75,height/2 + 200);
    text("H: " + hscore,width/2 + 75,height/2 + 200);
    
    fill(139,153,109);
    rectMode(CENTER);
    rect(ballX,ballY,ballSize,ballSize);
    
    ballX += ballSpeed * cos(ballAngle);
    ballY += ballSpeed * sin(ballAngle);
    if (ballX <= (ballSize / 2) || ballX >= width - (ballSize / 2)) {
        ballAngle = PI - ballAngle;
        bounce.play();
        bounce.rewind();
    } else if (ballY <= (ballSize / 2) || ballY >= height - (ballSize / 2)) {
        ballAngle = 2 * PI - ballAngle;
        bounce.play();
        bounce.rewind();
    }
    fill(202,210,172);
    rect(paddleX,paddleY,paddleWidth,paddleHeight);
    rect(paddleOtherSideX,paddleOtherSideY,paddleWidth,paddleHeight);
    rect(someOtherPaddleX,someOtherPaddleY,someOtherPaddleWidth,someOtherPaddleHeight);
    rect(someOtherPaddleOtherSideX,someOtherPaddleOtherSideY,someOtherPaddleWidth,someOtherPaddleHeight);
    if (paddleCollision(paddleX,paddleY,paddleWidth,paddleHeight) || paddleCollision(paddleOtherSideX,paddleOtherSideY,paddleWidth,paddleHeight)) {
        ballAngle = 2 * PI - ballAngle;
        paddle.play();
        paddle.rewind();
        score += 1;
        hscore += 1;
    } else if (paddleCollision(someOtherPaddleX,someOtherPaddleY,someOtherPaddleWidth,someOtherPaddleHeight) || paddleCollision(someOtherPaddleOtherSideX,someOtherPaddleOtherSideY,someOtherPaddleWidth,someOtherPaddleHeight)) {
        ballAngle = PI - ballAngle;
        paddle.play();
        paddle.rewind();
        score += 1;
        vscore += 1;
    }
    updateSpeed();
    updateWidth();
}

void updateSpeed() {
    float interval = score % 10;
    float round = (float)score - interval;
    ballSpeed = ((int)round / 10) + 5;
}

void updateWidth() {
    // float interval = score % 20;
    // float round = ((float)score - interval) / 2;
    // if (paddleWidth > 50) {
    //     paddleWidth = 100 - (int)round;
    //     someOtherPaddleHeight = 100 - (int)round;
    // }
    ;
}

boolean paddleCollision(float px, float py, float pwidth, float pheight) {
    if (ballX - (ballSize / 2) <= px + (pwidth / 2) && 
        ballX + (ballSize / 2) >= px - (pwidth / 2) && 
        ballY - (ballSize / 2) <= py + (pheight / 2) && 
        ballY + (ballSize / 2) >= py - (pheight / 2)) {
        return true;
        }
    return false;
}

// void paddleWall() {
//     if (paddleX == width - 50) {
//         paddleX = width - 50;
//         paddleOtherSideX = width - 50;
//     } else if (paddleX == 50) {
//         paddleX = 50;
//         paddleOtherSideX = 50;
//     }  
// }

// void someOtherPaddleWall() {
//     if (paddleY == height - 50) {
//         paddleY = height - 50;
//         paddleOtherSideY = height - 50;
//     } else if (paddleY == 50) {
//         paddleY = 50;
//         paddleOtherSideY = 50;
//     }  
// }

void keyPressed() {
    if (key == CODED) {
        if (keyCode == LEFT) {
            if (paddleX - (paddleWidth / 2) > 0) {
                paddleX -= paddleWidth;
                paddleOtherSideX -= paddleWidth;
            // } else {
            //     paddleWall();
            }
        } else if (keyCode == RIGHT) {
            if (paddleX + (paddleWidth / 2) < width) {
                paddleX += paddleWidth;
                paddleOtherSideX += paddleWidth;
            // } else {
            //     paddleWall();
            }
        }
        if (keyCode == UP) {
            if (someOtherPaddleY - (someOtherPaddleHeight / 2) > 0) {
                someOtherPaddleY -= someOtherPaddleHeight;
                someOtherPaddleOtherSideY -= someOtherPaddleHeight;
                // paddleWall();
            }
        } else if (keyCode == DOWN) {
            if (someOtherPaddleY + (someOtherPaddleHeight / 2) < height) {
                someOtherPaddleY += someOtherPaddleHeight;
                someOtherPaddleOtherSideY += someOtherPaddleHeight;
                // paddleWall();
            }
        }
    }
}

// [x] Add another paddle that will be controlled by the keyboard.
// [x] Update and show both players’ scores as the game progresses.
// [ ] A player scores when the ball goes beyond the other player’s paddle (hitting the wall behind the other player’s paddle).
//
// (x) Create and use paddle bounce sounds.
// (x) Create and use background music.
// ( ) Delay the game for a short time when the ball is re-centered (after a score).
// ( ) Vary the angle of bounce based on the location of a paddle+ball collision.
// (x) Increase the speed of the ball as the game progresses.
// ( ) Decrease the size of the paddles as the game progresses.
// (-) Change the easing as the game progresses.
// ( ) Fix the bugs in our current collision detection.