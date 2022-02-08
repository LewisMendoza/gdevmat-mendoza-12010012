void setup()
{
  size(1920, 1080, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

Mover mover = new Mover();
void draw()
{
  background(255);
  
  mover.position.add(new PVector(5, 6));
  mover.render();
  mover.setColor(155, 25, 200, 255);
}
