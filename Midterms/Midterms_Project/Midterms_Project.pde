Matter matter = new Matter();
BlackHole blackHole = new BlackHole();

void setup()
{
  size(1020, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  background(0);
  
  blackHole.render();
}



void draw()
{
  if (frameCount % 100 == 0)
  {
    background(0);
    blackHole.spawn();
    blackHole.render();
    
    matter.spawn();
    matter.rescale();
    matter.recolor();
    matter.render();
  }
  println(frameCount);
}
