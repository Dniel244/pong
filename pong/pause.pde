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
  text("EXIT", ballx2, bally2+5);
  //exit button
  fill(white);
  textSize(50);
 text("B", ex, 500);
 text("A", xx, 500);
 text("C", ix, 500);
 text("K", tx, 500);
 
 //exit tactile
 if (mouseX > 100 && mouseX < 700 && mouseY > 450 && mouseY < 510) {
   ex = 345;
   xx = 380;
   ix = 415;
   tx = 450;
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
  mode = INTRO;
  ballx = width/2;
  ballx2 = width/2;
  ballvx = 5;
  bally = height/2;
  bally2 = height/2 +10;
  ballvy = 5;
  balld = 100;
  
   leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  minim = new Minim(this);
  song = minim.loadFile("intro.wav");
  song.rewind();
  song.play();
  }
  
  if (mouseX > 345 && mouseX < 450 && mouseY > 450 && mouseY < 510) {
   mode = GAME;
 }
}
