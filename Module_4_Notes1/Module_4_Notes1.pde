Walker myWalker = new Walker();

void setup()
{
   size(1280, 720, P3D);
   camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
   
   //myWalker.acceleration = new PVector(-0.01, 0.1);
   myWalker.scale = 50;
}

/* Vector Motion 101

  1. Add Velocity to Position
  2. Draw the object at the position
 */
 
void draw()
{
 background(80);
 
 myWalker.update();
 myWalker.render();
 myWalker.checkEdges();
}
