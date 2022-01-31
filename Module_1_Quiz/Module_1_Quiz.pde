// Global Variables
int diameter = 15;
float t = 0.0; // Time
float dt = .1; // Change in Time
float amplitude = 100.0;
float frequency = .3;

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
  
  // 2.) f(x) = 5x + 30 (purple)
  drawLinearFunction();
  
  // 3.) Sine Wave Function (Any Color)
  drawSineWaveFunction();
  
  t += dt; // Time
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

// Item no. 1 Quadratic Function
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

// Item no. 2 Linear Function
void drawLinearFunction()
{
  /*
  f(x) = 5x + 30 (purple)
  */
  
  color purple = color(128, 0, 128);
  fill (purple);
  stroke(purple);
  
  for (int x = -200; x <= 200; x++)
  {
    circle(x, (x * 5) +30, 5);
  }
}

// Item no. 3 Sine Wave Function
void drawSineWaveFunction()
{
  color red = color (255, 0, 0);
  fill (red);
  stroke (red);
  
  for (int x = -300; x < x/diameter+45; x++)
  {
   circle(((float)(x * diameter)), ((float)(amplitude*Math.sin(frequency*(t+x)) + x)), ((float)(diameter)));
  }
}
