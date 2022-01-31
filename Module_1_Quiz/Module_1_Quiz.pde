
// initializes functions at the very first frame
void setup()
{
  size(1280, 720, P3D); // set window size to 1280 x 720
  camera(0,0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

// function thats called every frame
void draw()
{
  background(0); // sets background color of the whole window to black
  
  // draw cartesian plane as a guide
  drawCartesianPlane();
  
  // 1.) f(x) = x^2 - 15x - 3 (Yellow)
  drawQuadraticFunction();
  
}

// Draws a cartesian plane as a guide
void drawCartesianPlane()
{
  strokeWeight(1);
  color white = color(255,255,255);
  fill(white);
  stroke(white);
  line(-300, 0, 300, 0);
  line(0, -300, 0, 300);
  
  for (int i = -300; i <= 300; i += 10)
  {
    line(i, -2, i, 2);
    line(-2, i, 2, i);
  }
}

void drawQuadraticFunction()
{
  /*
  f(x) = x^2 - 15x - 3 (Yellow)
  */
  
  color yellow = color(255, 255, 0);
  fill (yellow);
  stroke(yellow);
  
  for (float x = -300; x <= 300; x+=0.1f)
  {
    circle(x, ((float)Math.pow(x, 2) + (x * 15) -3) , 5);
  } 
}

void drawLinearFunction()
{
  /*
  f(x) = 5x + 30 (purple)
  */
  
  color purple = color(128, 0, 128);
  fill (purple);
  stroke(purple);
}
