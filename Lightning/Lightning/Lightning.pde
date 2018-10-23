int startX;
int startY;
int endX;
int endY;

void setup()
{
  size(800,500);
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
  strokeWeight(2);
  background(51);
}
void draw()
{
  stroke(int(random(256)),int(random(256)),255);
  while(endX < 1600){
    endX = startX + int(random(9));
    endY = startY + int(random(-9,9));
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
  arc(20, 150, 80, 90, 0, PI+PI, CHORD);
  fill(0,0,255);
}
void mousePressed()
{
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
  background(51);
}
