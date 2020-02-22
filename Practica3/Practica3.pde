int rotationX;
int rotationY;
float ang,angs;
float chainAng;
float chainMov;
float viewAngX,viewAngY;
PImage sunImage,chainImage,earthImage,moonImage,waterImage,smokeImage,dustImage,universe;
Planet sun,earth,chain,moon,miniChain1,miniChain2,water,smoke, dust;
int lastWidth,lastHeight;
void setup()
{
  //fullScreen(P3D);
  size(1000,1000,P3D);
  stroke(0);
  sunImage = loadImage("sun.png");
  chainImage = loadImage("chain.jpg");
  universe = loadImage("universe.jpg");
  earthImage = loadImage("earth.jpg");
  moonImage = loadImage("moon.jpg");
  waterImage = loadImage("water.jpg");
  smokeImage = loadImage("smoke.jpg");
  dustImage = loadImage("dust.jpg");
  createPlanets();
  lastWidth = 0;
  lastHeight = 0;
  ang=0;
  angs = 0;
  viewAngX = 0;
  viewAngY = 0;
}


void createPlanets(){
  miniChain1 = new Planet("chained firstMoon",13,chainImage,1,0.1,69,true);
  miniChain2 = new Planet("chained scondMoon",10,chainImage,-1,-0.1,100,true);
  chain = new Planet("chained planet",25,chainImage,0.1,0.1,height,false);
  
  moon = new Planet("Moon",5,moonImage,0.6,0.1,30,false);
  earth = new Planet("Earth",20,earthImage,0.3,0.3,300,false);
  water = new Planet("Watzan",30,waterImage,-0.4,0.2,500,false);
  smoke = new Planet("Prometheus",20,smokeImage,-0.7,0.5,400,false);
  dust = new Planet("Dust II",35,dustImage,0.4,1,600,false);
  
  sun = new Planet("Sun",40,sunImage,0,0.5,0,false);
  
  earth.appendPlanet(moon);
  chain.appendPlanet(miniChain1);
  chain.appendPlanet(miniChain2);
  sun.appendPlanet(earth);
  sun.appendPlanet(chain);
  sun.appendPlanet(water);
  sun.appendPlanet(smoke);
  sun.appendPlanet(dust);
  
}


void draw(){
  if(lastHeight != height || lastWidth != width){
    lastHeight = height;
    lastWidth = width;
    universe.resize(width,height);
  }
  background(universe);
  
  translate(width/2,height/2);
  rotateX(radians(-30));
  pushMatrix();
  text(sun.getName(),-sun.getSize(),-sun.getSize() -10);
  sun.drawPlanetAndSurround();
  popMatrix();
  


}


void keyReleased() {
  if (keyCode == UP) rotationX = 0;
  else if (keyCode == DOWN) rotationX = 0;

  if (keyCode == LEFT )rotationY = 0;
  if (keyCode == RIGHT)rotationY = 0;
}

void keyPressed() {
  if (keyCode == UP) rotationX = 1;
  else if (keyCode == DOWN) rotationX = -1;

  if (keyCode == LEFT)rotationY = -1;
  else if (keyCode == RIGHT )rotationY = 1;
}
