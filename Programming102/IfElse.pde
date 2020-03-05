//the x- and y-coordinate of the "ball"
int x,y;
//Declaring and initializing the size of the ball
int ballSize = 50;
//Declaring and initializing the speed of the ball
int ballSpeed = 4;

void setup() {
  size(500,200);

  //The initial x-coordinate of the ball
  x=ballSize/2;
  //The initial x-coordinate of the ball
  y=height/2;
}

void draw() {
  background(0);

  //draw ellipse
  ellipse(x,y, ballSize, ballSize);
  //make the ellipse move
  x=x+ballSpeed;

  //make the ball bounce off the edges
  if(x<0 || x>width) {
    //multiplying with -1 to get the negative value of ballSpeed, so the ball moves in the opposite direction
    ballSpeed = ballSpeed*-1;
  }
}
