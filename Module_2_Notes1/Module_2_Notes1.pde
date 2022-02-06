void setup()
{
  size(1020, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

Walker myWalker = new Walker(); // creates an instance of our walker class here in sketch
Walker xWalker = new Walker();

void draw()
{
  //int rng = int(random(5)); // generates random value from 0 to 5
  //println(rng);
  
  myWalker.randomWalk();
  myWalker.render();
}
