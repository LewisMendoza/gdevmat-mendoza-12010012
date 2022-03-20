Liquid ocean = new Liquid(0, -100, Window.right, Window.bottom, 0.1f);
Walker[] myWalker = new Walker[10];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  int posX = 0;
  
  for (int i = 0; i < 10; i++)
  {
    posX = 2 * (Window.widthPx / 25) * (i - 5);
    myWalker[i] = new Walker();
    myWalker[i].position = new PVector(posX, 300);
    myWalker[i].r = random(0, 256);
    myWalker[i].g = random(0, 256);
    myWalker[i].b = random(0, 256);
    myWalker[i].mass = random(0, 10);
    myWalker[i].scale = myWalker[i].mass * 10;
  }
}

void draw()
{
  background(255);
  
  ocean.render();
  for (int i = 0; i < 10; i++)
  {
    myWalker[i].render();
    myWalker[i].update();
    
    PVector wind = new PVector(0.1, 0);
    myWalker[i].applyForce(wind);
  
    PVector gravity = new PVector(0, -0.15f * myWalker[i].mass);
    myWalker[i].applyForce(gravity); // applying gravity to our walker
  
    float c = 0.1f;
    float normal = 1;
    float frictionMagnitude = c * normal;
    PVector friction = myWalker[i].velocity.copy();
    // F = -uNv
    myWalker[i].applyForce(friction.mult(-1).normalize().mult(frictionMagnitude));
  
    if (myWalker[i].position.y <= Window.bottom)
    {
       myWalker[i].position.y = Window.bottom;
       myWalker[i].velocity.y *= -1;
    }
  
    if (ocean.isCollidingWith(myWalker[i]))
    {
       PVector dragForce = ocean.calculateDragForce(myWalker[i]);
       myWalker[i].applyForce(dragForce);
    }
  }
}
