Walker[] walkers = new Walker[10];
PVector wind = new PVector(0.4, 0);

void setup()
{
  size(1280, 720, P3D);
  camera(0,0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  int posX = 0;
  for (int i = 0; i < 10; i++)
  {
    posX = 2 * (Window. windowWidth / 10) * (i - 5);
    walkers[i] = new Walker() ;
    walkers[i].position = new PVector(posX, 200) ;
    walkers[i].mass = 10 - i;
    walkers[i].scale = walkers[i].mass * 15;
    walkers[i].r = random (1, 255) ;
    walkers[1].g = random (1, 255) ;
    walkers[1].b = random (1, 255) ;
    walkers[i].a = random (150, 255) ;
  }
}

void draw()
{
  background(255);
  noStroke();
  for (Walker w : walkers)
  {
    
    // Friction = -1 * mew * N * V
    float mew = 0.1f; // coefficient of friction
    float normal = 1;
    float frictionMagnintude = mew * normal;
    PVector friction = w.velocity.copy(); // copy copies the current velocity of our walker
    friction.mult(-1);
    friction.normalize();
    friction.mult(frictionMagnintude);
    w.applyForce(friction);
    
    PVector gravity = new PVector(0, -0.15 * w.mass);
    w.update();
    w.applyForce(gravity);
    w.render();
    //w.applyForce(wind);
     
     
    if (w.position.x >= Window.right)
    {
       w.position.x = Window.right;
       w.velocity.x *= -1;
    }
     
    if (w.position.y <= Window.bottom)
    {
       w.position.y = Window.bottom;
       w.velocity.y *= -1;
    }
  }
}
