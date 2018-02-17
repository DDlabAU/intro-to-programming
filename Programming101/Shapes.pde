//Size of window
size(500,500);

//Color of Background in RGB: (Red,Greed,Blue)
//each parameter range: 0-255
background(150,190,255);

//color of ellipse
fill(0, 255, 0);
//draw ellipse
ellipse(80,80,80,100);

//color of rectangle
fill(140);
//draw rectangle
rect(250,250, 100,150);

//color of triangle
fill(0,0,255);
//color of edges and lines below
stroke(255,0,0);
//draw triangle
triangle(400,40,350,100,300,30);

//draw line
line(0,500,500,0);

//color of specified shape (HEX-color)
fill(#000000);
//draw specified shape
beginShape();
vertex(40, 270);
vertex(100, 280);
vertex(90, 320);
vertex(50, 350);
vertex(10,300);
endShape(CLOSE);