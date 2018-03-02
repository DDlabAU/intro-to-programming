//an image has the datatype PImage
PImage img;

void setup() {
  size(500, 500);
  
  //load the image into the program with the name of the image and the image format
  //this should always be done in setup!
  img = loadImage("logo.png");
  
  //resize can be used to scale the image. 
  img.resize(0, height);
  //If one of the parameters are 0, this is scaled so it does not scale the picture out of proportion
  
  //this function displays the image and postitions it in (0,0)
  image(img,0,0);
}