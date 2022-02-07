void setup()
{
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  size(1080, 720, P3D);
}

PVector mousePos()
{
 float x = mouseX - Window.windowWidth / 2;
 float y = -(mouseY - Window.windowHeight / 2);
 return new PVector(x, y);
}

void draw()
{
  background(130);
  PVector mouse = mousePos();
  mouse.normalize().mult(200);
  
  // Lightsaber inner glow (White)
  strokeWeight(7);
  stroke(255, 0, 0);
  line(0, 0, mouse.x, mouse.y);
  line(0, 0, -mouse.x, -mouse.y);
  
  // Lightsaber outer glow (Red)
  strokeWeight(3);
  stroke(255, 255, 255);
  line(0, 0, mouse.x, mouse.y);
  line(0, 0, -mouse.x, -mouse.y);
  
  // Lightsaver Handle (Black)
  strokeWeight(7);
  stroke(0, 0, 0);
  mouse.normalize().mult(30);
  line(0, 0, mouse.x, mouse.y);
  line(0, 0, -mouse.x, -mouse.y); 
  
  // Print how long one side of the lightsaber is
  println(mouse.mag());
}
