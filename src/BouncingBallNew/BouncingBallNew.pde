// [x] Create and use paddle bounce sounds.
// [x] Create and use background music.
// [x] Delay the game for a short time when the ball is re-centered (after a score).
// [ ] Vary the angle of bounce based on the location of a paddle+ball collision.
// [x] Increase the speed of the ball as the game progresses.
// [x] Decrease the size of the paddles as the game progresses.
// [x] Change the easing as the game progresses.
// [ ] Fix the bugs in our current collision detection.

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
float someOtherPaddleOtherSideX;
float someOtherPaddleOtherSideY;

int score;
int p1score;
int p2score;
boolean waitForPress;
boolean menuSelect;
int numberPlayer;
float easing;

Minim minim;
AudioPlayer bounce;
AudioPlayer paddle;
AudioPlayer bg_music;
AudioPlayer new_score;

void setup() {
    size(700,900);
    minim = new Minim(this);
    bounce = minim.loadFile("bounce.wav",512);
    paddle = minim.loadFile("paddle.wav",512);
    bg_music = minim.loadFile("background.wav",512);
    bg_music.loop();
    new_score = minim.loadFile("score.wav",512);
    background(31,35,16);
    score = 0;
    p1score = 0;
    p2score = 0;
    waitForPress = false;
    menuSelect = false;
    numberPlayer = 1;
    textAlign(CENTER);
    easing = 0.1;

    ballX = width / 2;
    ballY = height / 2;
    ballAngle = 7;
    while (ballAngle > (2 * PI) - 1 || ballAngle < 1) {
        ballAngle = random(2 * PI);
    }
    ballSpeed = 10;
    ballSize = 12;

    paddleWidth = 100;
    paddleHeight = 10;
    
    paddleX = width / 2;
    paddleY = height - 50;
    someOtherPaddleX = width / 2;
    someOtherPaddleY = 50;
}

void draw() {
    if (menuSelect == false) {
        background(43,51,33);
        textSize(60);
        fill(123,131,113);
        text("Really Bad Pong",width/2,height/2 - 200);
        textSize(40);
        if (numberPlayer == 1) {
            fill(93,101,83);
            text("Single Player",width/2 - 150,height/2 + 200);
            fill(73,81,63);
            text("Multiplayer (2)",width/2 + 150,height/2 + 200);
        } else if (numberPlayer == 2) {
            fill(73,81,63);
            text("Single Player",width/2 - 150,height/2 + 200);
            fill(93,101,83);
            text("Multiplayer (2)",width/2 + 150,height/2 + 200);
        }
    } else {
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
        if (numberPlayer == 2) {
            textSize(50);
            text("P1: " + p1score,width/2,height/2 - 200);
            text("P2: " + p2score,width/2,height/2 + 200);
        } else if (numberPlayer == 1) {
            textSize(30);
            text("Easing: " + easing,width/2,height/2 + 150);
        }
        
        fill(139,153,109);
        rectMode(CENTER);
        rect(ballX,ballY,ballSize,ballSize);

        fill(202,210,172);
        rect(paddleX,paddleY,paddleWidth,paddleHeight);
        rect(someOtherPaddleX,someOtherPaddleY,paddleWidth,paddleHeight);
        
        if (numberPlayer == 2) {
            rect(paddleOtherSideX,paddleOtherSideY,paddleWidth,paddleHeight);
            rect(someOtherPaddleOtherSideX,someOtherPaddleOtherSideY,paddleWidth,paddleHeight);
        }

        if (numberPlayer == 1) {
            float targetX = mouseX;
            float dx = targetX - paddleX;
            paddleX += dx * easing;
            someOtherPaddleX += dx * easing;
        }

        if (waitForPress != true) {      
            ballX += ballSpeed * cos(ballAngle);
            ballY += ballSpeed * sin(ballAngle);
            if (ballX <= (ballSize / 2) || ballX >= width - (ballSize / 2)) {
                ballAngle = PI - ballAngle;
                bounce.play();
                bounce.rewind();
            }
            if (paddleCollision(paddleX,paddleY,paddleWidth,paddleHeight) || paddleCollision(paddleOtherSideX,paddleOtherSideY,paddleWidth,paddleHeight)) {
                paddleBounce();
            } else if (paddleCollision(someOtherPaddleX,someOtherPaddleY,paddleWidth,paddleHeight) || paddleCollision(someOtherPaddleOtherSideX,someOtherPaddleOtherSideY,paddleWidth,paddleHeight)) {
                paddleBounce();
            }
            updateSpeed();
            updateWidth();
            updateEasing();
            if (ballY <= (ballSize / 2)) {
                new_score.play();
                new_score.rewind();
                if (numberPlayer == 2) {
                    p2score += 1;
                    score += 1; 
                } else if (numberPlayer == 1) {
                    score = 0;
                }
                resetBall();
            } else if (ballY >= height - (ballSize / 2)) {
                new_score.play();
                new_score.rewind();
                if (numberPlayer == 2) {
                    p1score += 1;
                    score += 1; 
                } else if (numberPlayer == 1) {
                    score = 0;
                }
                resetBall();
            }
        }
    }
}

void resetBall() {
    ballX = width / 2;
    ballY = height / 2;
    ballAngle = 7;
    while (ballAngle > (2 * PI) - 1 || ballAngle < 1) {
        ballAngle = random(2 * PI);
    }
    waitForPress = true;
}

void paddleBounce() {
    ballAngle = 2 * PI - ballAngle;
    paddle.play();
    paddle.rewind();
    if (numberPlayer == 1) {
        score += 1;
    }
}

void updateSpeed() {
    float interval = score % 10;
    float round = (float)score - interval;
    ballSpeed = ((int)round / 10) + 5;
}

void updateWidth() {
    float interval = score % 20;
    float round = ((float)score - interval) / 2;
    if (paddleWidth > 50) {
        paddleWidth = 100 - (int)round;
    }
}

void updateEasing() {
    if (numberPlayer == 1) {
        if (score % 10 == 0) {
            easing = 0.1 - (float)score / 1000;

        }
    }
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

void paddleWall() {
    if (paddleX - (paddleWidth / 2) >= width - 1) {
        paddleX = paddleWidth / 2;
        paddleOtherSideX = width - (paddleWidth / 2);
    } else if (paddleX + (paddleWidth / 2) < 1) {
        paddleX = width - (paddleWidth / 2);
        paddleOtherSideX = paddleWidth / 2;
    }
    if (someOtherPaddleX - (paddleWidth / 2) >= width - 1) {
        someOtherPaddleX = paddleWidth / 2;
        someOtherPaddleOtherSideX = width - (paddleWidth / 2);
    } else if (someOtherPaddleX + (paddleWidth / 2) < 1) {
        someOtherPaddleX = width - (paddleWidth / 2);
        someOtherPaddleOtherSideX = paddleWidth / 2;
    }
}

void numberPlayerToggle() {
    if (numberPlayer == 1) {
        numberPlayer = 2;
    } else if (numberPlayer == 2) {
        numberPlayer = 1;
    }
}

void keyPressed() {
    waitForPress = false;
    if (key == ESC) {
        key = 0;
        if (menuSelect == true) {
            bg_music.pause();
            setup();
        }
    }
    if (key == CODED) {
        if (keyCode == LEFT) {
            if (menuSelect == false) {
                numberPlayerToggle();
            } else if (numberPlayer == 2 && menuSelect == true) {
                paddleX -= paddleWidth;
                paddleOtherSideX += paddleWidth;
                paddleWall();
            }
    } else if (keyCode == RIGHT) {
            if (menuSelect == false) {
                numberPlayerToggle();
            } else if (numberPlayer == 2 && menuSelect == true) {
                paddleX += paddleWidth;
                paddleOtherSideX -= paddleWidth;
                paddleWall();
            }
        }
    } else if (key == 'a' || key == 'D') {
        if (numberPlayer == 2 && menuSelect == true) {
            someOtherPaddleX -= paddleWidth;
            someOtherPaddleOtherSideX += paddleWidth;
            paddleWall();
        }
    } else if (key == 'd' || key == 'A') {
        if (numberPlayer == 2 && menuSelect == true) {
            someOtherPaddleX += paddleWidth;
            someOtherPaddleOtherSideX -= paddleWidth;
            paddleWall();
        }
    } else if (keyCode == ENTER && menuSelect == false) {
        menuSelect = true;
        if (numberPlayer == 2) {
            paddleOtherSideX = width / 2;
            paddleOtherSideY = height - 150;
            someOtherPaddleOtherSideX = width / 2;
            someOtherPaddleOtherSideY = 150;
        }
    }
}

void mousePressed() {
    waitForPress = false;
}
