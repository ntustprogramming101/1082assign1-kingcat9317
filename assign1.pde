PImage bgImg ,soilImg,hogImg,lifeImg,robotImg,soldierImg;
final int HOG_WH = 80;
final int LIFE_W = 50;
final int LIFE_H = 51;
final int SOIL_W = 640;
final int SOIL_H = 320;
final int SOIDIER_W = 80;
final int SOIDIER_H = 80;
final int ROBOT_W = 80;
final int ROBOT_H = 80;
final int GROUND = 80;

int soldierFloor=0;
int soldierWalk;
int robotLocate=0;
int robotFloor=0;
float laserX=0,laserY=0;

void setup() {
  size(640, 480, P2D);
  // Enter Your Setup Code Here
  bgImg = loadImage("img/bg.jpg");
  soilImg = loadImage("img/soil.png");
  hogImg = loadImage("img/groundhog.png");
  lifeImg = loadImage("img/life.png");
  robotImg = loadImage("img/robot.png");
  soldierImg = loadImage("img/soldier.png");
  //soldier
  soldierFloor=floor(random(0,4));
  robotLocate=floor(random(0,6))+2;
  robotFloor=floor(random(0,4));
  soldierWalk=-SOIDIER_W;
  
}

void draw() {
  // Enter Your Code Here
  image(bgImg, 0, 0,width, height);
  image(soilImg, 0, 160,SOIL_W, SOIL_H);
  //draw heart
  for(int x=10;x<=10+20*2+LIFE_W*2;x+=(20+LIFE_W)){
    image(lifeImg, x, 10,LIFE_W, LIFE_H);
  }
  //Sun
  fill(253,184,19);
  strokeWeight(5);
  stroke(255,255, 0);
  ellipse(width-50,50,120,120);
  
  //grass
  strokeWeight(15);
  stroke(124,204,25);
  line(0, 160-15/2,width, 160-15/2);
  
  //groundhog
  image(hogImg,width/2-HOG_WH/2,160-HOG_WH,HOG_WH,HOG_WH);
  
  //soldier
  image(soldierImg, soldierWalk , height-soldierFloor*80-SOIDIER_H,SOIDIER_W,SOIDIER_H);
  if( soldierWalk<=width){
    soldierWalk++;
  }
  else{
    soldierWalk=-SOIDIER_W;
  }
  

  
  //laser
  strokeWeight(10);
  stroke(255,0,0);

  if(robotLocate*GROUND+35-laserY>robotLocate*GROUND+35-ROBOT_W*2){
    line(robotLocate*GROUND+25-laserX, height-robotFloor*80-ROBOT_H+37,robotLocate*GROUND+25-laserY, height-robotFloor*80-ROBOT_H+37);
    laserX++;
    if(laserY-laserX>=40){
      laserY++;
    }else{
    laserY+=2;
    }
  }
  else{
    laserX=0;
    laserY=0;
  }
  
  //robot
  image(robotImg, robotLocate*GROUND, height-robotFloor*80-ROBOT_H,ROBOT_W,ROBOT_H);
}
