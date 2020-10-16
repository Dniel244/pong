void gameover() {
  background(darkBlue);
  if (rscore >= 11) {
    rwinner = true;
    
  }
  
  if (lscore >= 11) {
    mode = GAMEOVER;
    rwinner = false;
  }


if (rwinner == true) {
  textSize(80);
  text("Right Player Wins!", 400, 200);
} else {
  textSize(80);
  text("left Player Wins!", 400, 200);
}

}

void gameoverClicks() {
  
}
