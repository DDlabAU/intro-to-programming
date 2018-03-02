PImage colors;
color c = color(0);
int colorSize;

int strokeW = 5;
int thick = 5;
int ellipX,ellipY;

int rectSize = 30;
int rectX, rectY;



void setup() {
  size(500 , 500);
  background(255);
  
  ellipX = width/4;
  ellipY = height-50;
  
  rectX = width-rectSize;
  rectY = height-rectSize;
  
  colors = loadImage("color.png");
  colorSize = height/5;
  colors.resize(width, colorSize);
}

void draw() {
  displayEllipse();
  displayRect(rectX, rectY, rectSize);
  image(colors, 0, 0);
}

void displayEllipse() {
  fill(c);
  noStroke(); 
  for (int i = 1; i <= 3; i++) {
    ellipse(ellipX*i, ellipY, thick*i, thick*i);  
  }
}

void displayRect(int x, int y, int size) {
  stroke(0);
  strokeWeight(1);
  fill(c);
  rect(x, y, size, size);
}

void keyPressed() {
  background(255);
}

void mouseDragged() {
  if (mouseY > colorSize && mouseY < height-100) {
      strokeWeight(strokeW);
      stroke(c);
      line(mouseX, mouseY, pmouseX, pmouseY);
    }  
}

void mousePressed() {
  if (mouseY < colorSize) {
      c = get(mouseX, mouseY);
    }
    if (dist(mouseX, mouseY, ellipX, ellipY) < thick/2) {
      strokeW = thick;
    }
    if (dist(mouseX, mouseY, ellipX*2, ellipY) < thick) {
      strokeW = thick*2;
    }
    if (dist(mouseX, mouseY, ellipX*3, ellipY) < thick*3/2) {
      strokeW = thick*3;
    }
    
    if(mouseX > rectX && mouseX < rectX+rectSize && mouseY > rectY && mouseY < rectY+rectSize) {
      background(c);
    }
}