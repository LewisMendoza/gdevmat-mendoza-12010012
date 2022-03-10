BlackHole blackHole = new BlackHole();
Matter[] matter = new Matter[100];

void setup()
{
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  size(1020, 720, P3D);
  background(0);
  
  for (int i = 0; i < 100; i++)
  {
    matter[i] = new Matter();
    matter[i].spawn();
    matter[i].rescaleAndColor(blackHole);
  }
}

void draw()
{
  background(0);
  
  for (int i = 0; i < 100; i++)
  {
    matter[i].pull(blackHole);
    matter[i].render();
  }
  
  if (frameCount % 100 == 0)
  { 
    // Decides the random position, scale, and color of 100 matters 
    for (int i = 0; i < 100; i++)
    {
      matter[i].spawn();
      matter[i].rescaleAndColor(blackHole);
    }
  }
  
  blackHole.render(); // Renders Black Hole into the screen
  println(frameCount); // Used for debugging
}
