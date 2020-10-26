void game() {
  stroke(black);
  background(darkBlue);
  //draw paddles
  strokeWeight(5);
  fill(purple);
  circle(leftx, lefty, leftd);
  fill(red);
  circle(rightx, righty, rightd);
  
  //scores
  fill(white);
  textSize(50);
  text("" + lscore, 200, 100);
  text("" + rscore, 600, 100);
  
  //gameover
  if (rscore >= 3) {
    mode = GAMEOVER;
    rwinner = true;
    
  }
  
  if (lscore >= 3) {
    mode = GAMEOVER;
    rwinner = false;
    
  }
  
  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  
  if (AI == false) {
  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;
  } else {
    if (bally > righty) {
      righty = righty + 2;
    }
    if (bally < righty) {
      righty = righty - 2; 
    }
  }
  
  
  
  //draw ball
  fill(white);
  circle(ballx, bally, balld);
  
  //move ball
  ballx = ballx + ballvx;
  bally = bally + ballvy;
  if (ballx > 750) {
  ballx = width/2;
    bally = height/2;
    ballvx = -5;
    ballvy = 0;
    lscore++;
    minim = new Minim(this);
  song = minim.loadFile("score.wav");
  song.play();
  }
  if (ballx < 50) {
    ballx = width/2;
    bally = height/2;
    ballvx = 5;
    ballvy = 0;
    rscore++;
    minim = new Minim(this);
  song = minim.loadFile("score.wav");
  song.play();
  }
  if (bally > 550) {
    ballvy = -5;
    minim = new Minim(this);
  song = minim.loadFile("wall.wav");
  song.play();
  }
    
  if (bally < 50) {
    ballvy = 5;
    minim = new Minim(this);
  song = minim.loadFile("wall.wav");
  song.play();
  }
  
  
  if (dist(leftx, lefty, ballx, bally) <= leftd/2 + balld/2) {
    ballvx = (ballx - leftx)/20;
    ballvy = (bally - lefty)/20;
    minim = new Minim(this);
  song = minim.loadFile("leftpaddle.wav");
  song.play();
  }
  
  if (dist(rightx, righty, ballx, bally) <= rightd/2 + balld/2) {
     ballvx = (ballx - rightx)/20;
    ballvy = (bally - righty)/20;
    minim = new Minim(this);
  song = minim.loadFile("rightpaddle.wav");
  song.play();
  }
  
  if (lefty > 400) lefty = 400;
  if (lefty < 200) lefty = 200;
  
  if (righty > 400) righty = 400;
  if (righty < 200) righty = 200;
  
  if (bally > 550) bally = 550;
  if (bally < 50) bally = 50;
  
  //pause
  if (mouseX > pausex && mouseX < pausex2+10 && mouseY > pausey && mouseY < pausey+50) {
    rect(pausex-10, pausey-5, 20, 60);
  rect(pausex2-5, pausey-5, 20, 60);
  } else {
  rect(pausex, pausey, 10, 50);
  rect(pausex2, pausey, 10, 50);
  }
}
void gameClicks() {
    if (mouseX > pausex && mouseX < pausex2+10 && mouseY > pausey && mouseY < pausey+50) {
      mode = PAUSE;
    }
  }
