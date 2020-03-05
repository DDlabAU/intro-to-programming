//the x- and y-coordinate of the "ball"
int x,y;
//Declaring and initializing the size of the ball
int ballSize = 50;
//Declaring and initializing the speed of the ball
int ballSpeed = 4;
//Declaring and initializing boolean(true/false) to determine the color of the ball at a given time under execution
boolean red = true;

void setup() {
  size(500,200);

  //The initial x-coordinate of the ball
  x=ballSize/2;
  //The initial x-coordinate of the ball
  y=height/2;
}

void draw() {
  background(0);

  //if(red) means if red == true
  if (red) {
    fill(255,0,0);
  } else {
    fill(0,0,255);
  }

  //draw ellipse
  ellipse(x,y, ballSize, ballSize);
  //make the ellipse move
  x=x+ballSpeed;

  //make the ball bounce off the edges
  if(x<0 || x>width) {
    //multiplying with -1 to get the negative value of ballSpeed, so the ball moves in the opposite direction
    ballSpeed = ballSpeed*-1;
    //! means "not", this changes the boolean into to the opposite of what it is
    red = !red;
  }
}
