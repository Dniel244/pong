void intro() {
 
  background(darkBlue);
  fill(white);
  textSize(150);
  text("PING.", 410, 200);
  textSize(30);
  text("Original game by me.", 400, 550);
  
  rscore = 0;
  lscore = 0;
  
  
  
  //draw ball
  stroke(black);
  strokeWeight(5);
  circle(ballx2, bally2, balld);
  
  //move ball
  ballx2 = ballx2 + ballvx;
  if (ballx2 > 750) ballvx = -5;
  if (ballx2 < 50) ballvx = 5;


//start button
  if (mouseX > trix && mouseX < trix+70 && mouseY > triy && mouseY < triy+140) {
    triangle(trix-20, triy-20, trix+90, triy+70, trix-20, triy+160);
  } else {
  triangle(trix, triy, trix+70, triy+70, trix, triy+140);
  }
  
  //2 player
  fill(stroke);
  stroke(stroke);
  square(700, 500, 40);
  textSize(20);
  text("2 player",720, 570);
  
   if (mouseX > 700 && mouseX < 740 && mouseY > 500 && mouseY < 540) {
     stroke = green;
   } else {
     stroke = red;
   }
  
  
  
  
  

  

}




void introClicks() {
  if (mouseX > trix && mouseX < trix+70 && mouseY > triy && mouseY < triy+140) {
    mode = GAME;
    song.pause();
    AI = false;
  }
  
 if (mouseX > 700 && mouseX < 740 && mouseY > 500 && mouseY < 540) {
   mode = GAME;
   AI = true;
   song.pause();
 }
  
  
  
  
  
  
  
}
