public class Matter
{
 public PVector position = new PVector();
 public PVector scale = new PVector();
 public PVector rgb = new PVector(255, 255, 255);
 public color Color;
 
 public void spawn()
 {
   position.x = random(Window.left, Window.right + 1);
   position.y = random(Window.bottom, Window.top + 1);
 }
 
 public void pull(BlackHole blackHole)
 {
   PVector direction = PVector.sub( blackHole.position, this.position);
   this.position.add(direction.normalize().mult(7));
 }
  
 public void rescaleAndColor(BlackHole blackhole)
 {
   scale.x = random(0, blackhole.getScale() - 1);
   Color = color(random(0, 256), random(0, 256), random(0, 256), 150);
 }
  
 public void render()
 {
   noStroke();
   fill(Color);
   circle(position.x, position.y, scale.x);
 }
}
