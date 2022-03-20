Walker[] walker = new Walker[10];
PVector wind = new PVector(0.2, 0);
PVector gravity = new PVector(0, -0.4); // CHANGE THIS SOON

void setup()
{
  size(1280, 720, P3D);
  camera(0,0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  reset();
}


void reset()
{
  int posY = 0;
  
  for (int i = 0; i < 10; i++)
  {  
    posY = 2 * (Window.windowHeight / 10) * (i - (10 / 2));
    walker[i] = new Walker();
    walker[i].walkerReset();
    walker[i].setSpawn(-500, posY);
    walker[i].characterizeWalker(i + 1); // If increasing do (i + 1)
  }
}

void draw()
{
  background(0);
  
  for (Walker w : walker)
  {
    float mew = 0.01f;
    float normal = 1;
    if (w.position.x < 0)
    {
      mew = 0.01f;
    }
    
    else if (w.position.x >= 0)
    {
      mew = 0.4f;
    }
    
    float frictionMagnitude = mew * normal;
    PVector friction = w.velocity.copy();
    friction.mult(-1);
    friction.normalize();
    friction.mult(frictionMagnitude);
    
    w.render();
    w.update();
    w.applyForce(wind);
    w.applyForce(gravity);
    w.applyForce(friction);
    w.wallCollisionCheck();
  }
}

void mousePressed()
{
    reset();
}
