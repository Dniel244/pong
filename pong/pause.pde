void pause() {
  background(darkBlue);
  
  //paused text
  fill(white);
  textSize(150);
  text("Paused.", 400, 200);
  //draw ball
  stroke(black);
  strokeWeight(5);
  circle(ballx2, bally2, balld);
  //resum text
  fill(resumeFill);
  textSize(20);
  text("Resume", ballx2, bally2+5);
  //exit button
  fill(white);
  textSize(50);
 text("E", ex, 500);
 text("X", xx, 500);
 text("I", ix, 500);
 text("T", tx, 500);
 
 //exit tactile
 if (mouseX > 100 && mouseX < 700 && mouseY > 450 && mouseY < 510) {
   ex = 345;
   xx = 390;
   ix = 425;
   tx = 460;
 } else {
   ex = 100;
   xx = 300;
   ix = 500;
   tx = 700;
   
 }
 
 
  //move ball
  ballx2 = ballx2 + ballvx;
  if (ballx2 > 750) ballvx = -5;
  if (ballx2 < 50) ballvx = 5;
  
  //ball tactile
  if (mouseX > ballx2-50 && mouseX < ballx2+50 && mouseY > bally2-50 && mouseY < bally2+50) {
    resumeFill = black;
  } else {
    resumeFill = white;
  }
}

void pauseClicks() {
  if (mouseX > ballx2-50 && mouseX < ballx2+50 && mouseY > bally2-50 && mouseY < bally2+50) {
  mode = GAME;
  }
  
  if (mouseX > 345 && mouseX < 460 && mouseY > 450 && mouseY < 510) {
   mode = INTRO;
 }
}
