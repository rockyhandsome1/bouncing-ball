float x;
float y;
float xspeed=7;
float yspeed=7;
int xd=1;
int yd=1;
int ballrad=40;
int tw=200;
int th=20;
int rectrad=10;
PFont myFont;

void setup(){
size(1080,900);
x=width/2;
y=height/2;
ellipseMode(RADIUS);
frameRate(100);
}

void draw(){
background(50);
if(y>height)
{
  myFont = createFont("_Bold", 32); 
  textFont(myFont); 
  text("well played dude:)", width/2-130, height/2); 
}
x=x+(xspeed*xd);
y=y+(yspeed*yd);
if(x>width-ballrad||x<ballrad)
xd*=-1;
if((y<ballrad)||((y+ballrad>(height-th))&&(x>mouseX||x==mouseX)&&(x<(mouseX+tw)||x==(mouseX+tw))&&(y<height)))
yd*=-1;
ellipse(x,y,ballrad,ballrad);
if(mouseX+tw>width)
rect(width-tw,height-th,tw,th,rectrad);
else
rect(mouseX,height-th,tw,th,rectrad);

}
