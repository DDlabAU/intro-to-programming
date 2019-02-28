//an image has the datatype PImage
PImage img;
float difference;

void setup() {
  size(500, 500);

  //load the image into the program with the name of the image and the image format
  //this should always be done in setup!
  img = loadImage("logo.png");
  
  //calculating the difference between the height of the image and the height of the canvas
  difference = float(img.height)/float(height);
  //Be aware of the types! float() makes sure the heights are calculated as floats (does not work with int)
  
  //this function displays the image and positions it in (0,0) in a size, where the height of the image matches the height of the canvas 
  image(img, 0, 0, img.width/difference, img.height/difference);
}
