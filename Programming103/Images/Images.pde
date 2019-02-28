PImage img;

int picWidth;
int picHeight;

int col = 5;
int row = 5;


void setup() {
  size(500, 500);

  img = loadImage("logo.png");

  picWidth = width/col;
  picHeight = height/row;
}

void draw() {
  for (int i = 0; i< col; i++) {
    for (int j = 0; j<row; j++) {
      image(img, i*picWidth, j*picHeight, img.width/8, img.height/8);
    }
  }
}
