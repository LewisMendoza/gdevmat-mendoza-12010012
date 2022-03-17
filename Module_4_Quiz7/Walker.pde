public class Walker
{
  public PVector position = new PVector();
  public PVector acceleration = new PVector();
  public PVector mousePos = new PVector();
  public float scale;

  public void spawn()
 {
   position.x = random(Window.left, Window.right + 1);
   position.y = random(Window.bottom, Window.top + 1);
 }
 
 public void randScale()
 {
   this.scale = random(0, 10);
 }
 
 public void attract()
 {
   PVector direction = PVector.sub(mousePos, this.position);
   this.acceleration.add(direction.normalize().mult(0.2));
   this.position.add(this.acceleration);
 }
 
 public void render()
 {
   mousePos.x = mouseX - Window.windowWidth;
   mousePos.y = -(mouseY - Window.windowHeight);
   noStroke();
   circle(position.x, position.y, scale);
 }
}
