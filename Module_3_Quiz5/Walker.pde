public class Walker
{
 // x and y coordinates
 PVector position = new PVector();
 PVector tPosition = new PVector(0, 10000);
 PVector speed = new PVector(5, 8);
 
 // circle thickness
 PVector thickness = new PVector();
 PVector tThick = new PVector(0, 0);
 
 // circle color (r = x, y = g, z = b)
 PVector rgb = new PVector(255, 255, 255);
 PVector trgb = new PVector(0, 127.5, 255);
 
 void render()
 {
  noStroke();
  circle(position.x, position.y, 50); // change between thickness.x for perlin or any other value for any else
 }
 
 void perlinWalk()
 {
   position.x = map(noise(tPosition.x), 0, 1, -640, 640);
   position.y = map(noise(tPosition.y), 0, 1, -360, 360);
   
   tPosition.x += 0.01f;
   tPosition.y += 0.01f;
 }
 
 void perlinThick()
 {
   thickness.x = map(noise(tThick.x), 0, 1, 5, 150);
   
   tThick.x += 0.01f;
 }
 
 void perlinColor()
 {
   rgb.x = int(map(noise(trgb.x), 0, 1, 0, 255));
   trgb.x -= 0.01f;
   
   rgb.y = int(map(noise(trgb.y), 0, 1, 0, 255));
   trgb.y -= 0.01f;
   
   rgb.z = int(map(noise(trgb.z), 0, 1, 0, 255));
   trgb.z -= 0.01f;
   
   fill(rgb.x, rgb.y, rgb.z, 255);
 }
 
 void moveAndBounce()
 {
  // flush the screen with white background
  background(255);
  
  // add speed to the current position
  position.add(speed);
   
  // conditions for bouncing
  if ((position.x > Window.right) || (position.x < Window.left))
  {
   speed.x *= -1; 
  }
  
  if ((position.y > Window.top) || (position.y < Window.bottom))
  {
   speed.y *= -1; 
  }
  
  // changes the fill of the circle
  fill(182, 52, 100);
 }
}
