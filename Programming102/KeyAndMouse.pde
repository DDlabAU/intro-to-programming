//If the program does not react to the keys being pressed, click the window with the mouse and try again.
//Use c-key and arrowkeys to make shapes appear, press on the canvas with the mouse to change the color.


//a boolean to turn on and off the ellipse in the middle
boolean center = false;
//booleans to turn on and off the rectangles in the different directions
boolean rectangleUp = false;
boolean rectangleDown = false;
boolean rectangleLeft = false;
boolean rectangleRight = false;

//the color of the shapes
color c = color(0);

void setup() {
  size(500, 500);
  //Make it possible to place the rectangle according to the center instead of the upper left corner
  rectMode(CENTER);
}

void draw() {
  background(255);
  noStroke();
  fill(c);

  //drawing the ellipse and/or rectangles if the booleans are true
  if (center) {
    ellipse(width/2, height/2, 50, 50);
  }
  if (rectangleUp) {

    rect(width/2, height/3, 50, 50);
  }
  if (rectangleDown) {

    rect(width/2, height/3*2, 50, 50);
  }
  if (rectangleLeft) {

    rect(width/3, height/2, 50, 50);
  }
  if (rectangleRight) {

    rect(width/3*2, height/2, 50, 50);
  }
}

//if the mouse is pressed, this function is called
void mousePressed() {
  //choose a random color for the shapes
  c = color(random(255), random(255), random(255));
}

//if a key is pressed, this function is called
void keyPressed() {
  //if the pressed key is c, then then the center boolean is switched
  if (key == 'c') {
    center = !center;
  }
  //if the pressed key is up-arrow, then then the rectangleUp boolean is switched, and likewise for the other arrow keys.
  if (keyCode == UP) {
    rectangleUp = !rectangleUp;
  }
  if (keyCode == DOWN) {
    rectangleDown = !rectangleDown;
  }
  if (keyCode == LEFT) {
    rectangleLeft = !rectangleLeft;
  }
  if (keyCode == RIGHT) {
    rectangleRight = !rectangleRight;
  }
}
