public class Walker
{
 // x and y coordinates
 public float x;
 public float y;
 public float tx = 0, ty = 10000;
 
 // circle thickness
 public float thickness;
 public float tThick = 0;
 
 // circle color
 public int r = 255;
 public int g = 255;
 public int b = 255;
 public float tr = 0, tg = 127.5, tb = 255;
 
 void render()
 {
  noStroke();
  fill(r, g, b, 255);
  circle(x, y, thickness); 
 }
 
 void perlinWalk()
 {
   x = map(noise(tx), 0, 1, -640, 640);
   y = map(noise(ty), 0, 1, -360, 360);
   
   tx += 0.01f;
   ty += 0.01f;
 }
 
 void perlinThick()
 {
   thickness = map(noise(tThick), 0, 1, 5, 150);
   
   tThick += 0.01f;
 }
 
 void perlinColor()
 {
   r = int(map(noise(tr), 0, 1, 0, 255));
   tr -= 0.01f;
   
   g = int(map(noise(tg), 0, 1, 0, 255));
   tg -= 0.01f;
   
   b = int(map(noise(tb), 0, 1, 0, 255));
   tb -= 0.01f;
 }
}
