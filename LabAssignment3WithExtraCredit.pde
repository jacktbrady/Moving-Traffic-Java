int x;
int y;
int yy;
int size;
int speed;
color c;
void setup() {
  size(700, 700);
  x=width/3;
  y=height-height/7;
  yy=width/3;
  size=100;
  speed=1;
  c=color(0, 190, 10);
}
void drawXcars() { 
  int offset = size/4;
  rectMode(CENTER); 
  stroke(0);
  fill(c); 
  rect(x, y, size, size/2); 
  fill(255, 10, 0);
  rect(x-2*width/7, y, size/2, size/4); 
  fill(255, 10, 255);
  rect(x-width/6, y, 2*size/3, size/3); 
  //Wheels
  fill(100); 
  rect(x - offset, y - offset, offset, offset/2); 
  rect(x + offset, y - offset, offset, offset/2); 
  rect(x - offset, y + offset, offset, offset/2); 
  rect(x + offset, y + offset, offset, offset/2);
  rect(x - offset/2-2*width/7, y - offset/2, offset/2, offset/4); 
  rect(x + offset/2-2*width/7, y - offset/2, offset/2, offset/4); 
  rect(x - offset/2-2*width/7, y + offset/2, offset/2, offset/4); 
  rect(x + offset/2-2*width/7, y + offset/2, offset/2, offset/4);
  rect(x - 2*offset/3-width/6, y - 2*offset/3, 2*offset/3, offset/3); 
  rect(x + 2*offset/3-width/6, y - 2*offset/3, 2*offset/3, offset/3); 
  rect(x - 2*offset/3-width/6, y + 2*offset/3, 2*offset/3, offset/3); 
  rect(x + 2*offset/3-width/6, y + 2*offset/3, 2*offset/3, offset/3);
} 
void drawYcars() {
  int offset = size/4;
  rectMode(CENTER); 
  stroke(0);
  fill(c); 
  rect(y, yy, size/2, size); 
  fill(255, 10, 0);
  rect(y, yy-2*width/7, size/4, size/2); 
  fill(255, 10, 255);
  rect(y, yy-width/6, size/3, 2*size/3); 
  //Wheels
  fill(100); 
  rect(y - offset, yy - offset, offset/2, offset); 
  rect(y + offset, yy - offset, offset/2, offset); 
  rect(y - offset, yy + offset, offset/2, offset); 
  rect(y + offset, yy + offset, offset/2, offset);
  rect(y - offset/2, yy - offset/2-2*width/7, offset/4, offset/2); 
  rect(y - offset/2, yy + offset/2-2*width/7, offset/4, offset/2); 
  rect(y + offset/2, yy - offset/2-2*width/7, offset/4, offset/2); 
  rect(y + offset/2, yy + offset/2-2*width/7, offset/4, offset/2);
  rect(y - 2*offset/3, yy - 2*offset/3-width/6, offset/3, 2*offset/3); 
  rect(y - 2*offset/3, yy + 2*offset/3-width/6, offset/3, 2*offset/3); 
  rect(y + 2*offset/3, yy - 2*offset/3-width/6, offset/3, 2*offset/3); 
  rect(y + 2*offset/3, yy + 2*offset/3-width/6, offset/3, 2*offset/3);
}
void xdrive() {
  x += speed;
}
void ydrive() {
  yy += speed;
}
void reset() {
    x=0;
    yy=width/3;
}
void draw() {
  background(150);
  drawXcars();
  drawYcars();
  int g = color(0, 255, 0);
  int r = color(255, 0, 0);
  if (x<2*width) {
    fill(g);
    noStroke();
    ellipse(width-50, height-100, size/5, size/5);
    fill(r);
    noStroke();
    ellipse(width-100, height-50, size/5, size/5);
    xdrive();
  } if(x>width+200 && yy<height+250) {
    fill(r);
    noStroke();
    ellipse(width-50, height-100, size/5, size/5);
    fill(g);
    noStroke();
    ellipse(width-100, height-50, size/5, size/5);
    ydrive();
  }
   if (yy == height+250) {
      reset();
   }
}
