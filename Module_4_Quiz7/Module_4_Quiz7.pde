Walker[] walker = new Walker[100];

void setup()
{
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  size(1280, 720, P3D);
  background(0);
  
  for (int i = 0; i < 100; i++)
  {
    walker[i] = new Walker();
    walker[i].spawn();
    walker[i].randScale();
  }
}

void draw()
{
  background(0);
  for(int i = 0; i < 100; i++)
  {
    walker[i].attract();
    walker[i].render();
  }
}
