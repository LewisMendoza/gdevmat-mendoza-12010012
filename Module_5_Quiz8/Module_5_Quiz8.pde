Walker[] walker = new Walker[10]; // Declare Walker Array in the size of 10
PVector wind = new PVector(0.15, 0); // Declare and initalize wind force
PVector gravity = new PVector(0, -0.4); // Declare and initalize gravitational force

void setup()
{
  size(1280, 720, P3D);
  camera(0,0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  background(0);
  
  for (int i = 0; i < 10; i++)
  {
    walker[i] = new Walker(); // Initialize 10 Walkers
    walker[i].spawn(); // Sets the spawnpoint of walkers to (-500, 200)
    walker[i].characterizeWalker(); // Sets the mass, scale and color of walker
  }
}

void draw()
{
  background(0);
  
  for (int i = 0; i < 10; i++)
  {
     walker[i].render();
     walker[i].update();
     walker[i].applyForce(wind); // Applies wind force to walker
     walker[i].applyForce(gravity); // Applies gravitational force to walker
     walker[i].wallCollisionCheck(); // Applies Newton's Third Law to bounce from edges of the screen
  }
}
