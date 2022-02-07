void setup()
{
 size(1020, 720, P3D); 
 camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
 background(255);
}

void draw()
{
  float x = randCoordGaussian();
  float y = random(-360, 361);
  
  color randColor = color(random(0, 256), random(0, 256), random(0, 256));
  noStroke();
  fill(randColor, random(10, 101));
  circle(x, y, randThickGaussian());
  
  if (frameCount >= 300)
  {
   println(frameCount);
   flush(); 
  }
}

float randCoordGaussian()
{
  float gaussian = randomGaussian();
  float standardDeviation = 200;
  float mean = 0;
  
  float x = standardDeviation * gaussian + mean;
  return x;
}

float randThickGaussian()
{
 float gaussian = randomGaussian();
 float standardDeviation = 50;
 float mean = 30;
 
 float thick = standardDeviation * gaussian + mean;
 
 return thick;
}
