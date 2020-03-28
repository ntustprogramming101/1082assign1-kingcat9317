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

void setup() {
	size(640, 480, P2D);
	// Enter Your Setup Code Here
  bgImg = loadImage("img/bg.jpg");
  soilImg = loadImage("img/soil.png");
  hogImg = loadImage("img/groundhog.png");
  lifeImg = loadImage("img/life.png");
  robotImg = loadImage("img/robot.png");
  soldierImg = loadImage("img/soldier.png");
  
  
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

}