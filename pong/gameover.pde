void gameover() {
  if (rwinner == true) {
    background(red);
  } else {
    background(purple);
  }
    
  if (rscore >= 11) {
    rwinner = true;
    
  }
  
  if (lscore >= 11) {
    mode = GAMEOVER;
    rwinner = false;
  }

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
  
  
  
if (rwinner == true) {
  textSize(80);
  fill(black);
  text("Red Player Wins!", 400, 200);
  

  
  
 
  
} else {
  textSize(80);
  fill(white);
  text("Purple Player Wins!", 400, 200);
  
 
 
}

}

void gameoverClicks() {
  if (mouseX > 345 && mouseX < 460 && mouseY > 450 && mouseY < 510) {
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
}
