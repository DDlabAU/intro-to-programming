//Defining all the sizes of the circles at once
//int [] sizes={40, 50, 20, 70, 60};
//OR declaring that we want an array called sizes, and then defining the values later
int [] sizes;

void setup() {
  size(800, 500);
  
  //defining that the array should hold 5 int values
  sizes = new int[5];
  //defining each value individually
  sizes[0] = 40;
  sizes[1] = 50;
  sizes[2] = 20;
  sizes[3] = 70;
  sizes[4] = 60;
  
  //calculating the distance inbetween each circle
  int dist = width/(sizes.length+1);
  
  //drawing each circle with a forloop, that depends on the length of the array
  for (int i = 0; i < sizes.length; i++) {
    int x=dist*(i+1);
    ellipse(x, height/2, sizes[i], sizes[i]);
  }
}