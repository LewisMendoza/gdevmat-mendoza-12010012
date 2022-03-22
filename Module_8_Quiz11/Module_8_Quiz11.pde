Walker[] walker = new Walker[10];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for (int i = 0; i < 10; i++)
  {
    walker[i] = new Walker();
    walker[i].r = random(0, 256);
    walker[i].g = random(0, 256);
    walker[i].b = random(0, 256);
    walker[i].a = 123;
    walker[i].mass = random(0, 20);
    walker[i].scale = walker[i].mass * 10;
    walker[i].position = new PVector(random(Window.left, Window.right), random(Window.bottom, Window.top));
  }
}

void draw()
{
   background(255);
   
   for (int i = 0; i < 10; i++)
   {
      walker[i].update();
      walker[i].render();
   }
   
   for (int i = 0; i < 10; i++)
   {
      for (int j = 0; j < 10; j++)
      {
        if (i != j)
        {
            walker[i].applyForce(walker[j].calculateAttraction(walker[i]));
            walker[j].applyForce(walker[i].calculateAttraction(walker[j]));
        }
      }
   }
}
