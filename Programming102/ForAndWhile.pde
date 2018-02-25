//a variable to hold the distance between the circles
int dist;
//the amount of circles
int circles = 10;

void setup() {
  size(500,500);
  //calculating the distance between each circle (+1 since we do not want a circle on the edge of the window)
  dist = width/(circles+1);
  background(150);

  //black circles are made with a for loop
  fill(0);
  //start the for loop at 1, since we do not want a cicle on the edge of the window
  for(int i = 1; i <= circles; i++) {
    int x = dist*i;
    ellipse(x,height/3,20,20);
  }
  
  //white circles are made with a while loop
  fill(255);
  //making the variable that is automatically a part of the for loop
  int i = 1;
  while(i <= circles) {
    int x = dist*i;
    ellipse(x,height/3*2,20,20);
    //remember to increment the variable, or the loop will be eternal!
    i++;
  }
}

//for and while loops are loops by themselves, so they do not need to be in draw.
void draw() {
  
}