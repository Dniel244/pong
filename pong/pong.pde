///Daniel ALtshuler
//1-1
//October 15, 2020



//mode framework
int mode;
final int INTRO    = 1;
final int GAME     = 2;
final int PAUSE    = 3;
final int GAMEOVER = 4;

//color pallette
color darkBlue = #02002E;
color purple = #6906BC;
color red = #E50505;
color white = #FFFFFF;
color black = #000000;

color resumeFill;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, ballx2,  bally, bally2, balld, ballvx, ballvy; //ball
float trix, triy;
float pausex, pausex2, pausey;
float ex, xx, ix, tx;

int rscore, lscore;

boolean rwinner;

//keyboard variables
boolean wkey, skey, upkey, downkey;



void setup() {
  background(darkBlue);
  size(800, 600);
  mode = INTRO;
  textAlign(CENTER);
  
  //intialize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //initiallize ball
  ballx = width/2;
  ballx2 = width/2;
  ballvx = 5;
  bally = height/2;
  bally2 = height/2 +10;
  ballvy = 5;
  balld = 100;
  
  //initialize play button
  trix = 380;
  triy = 250;
  
  //initialize pause button
  pausex = 35;
  pausex2 = 55;
  pausey = 40;
  
  //intialize keyboard vars
  wkey = skey = upkey = downkey;
  
  //intitialize exit button
  ex = 100;
  xx = 300;
  ix = 500;
  tx = 700;
  
  //initialize score
  rscore = 0;
  lscore = 0;
  
  
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error" + mode);
  }
  
  
} 
