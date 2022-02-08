public class Matter
{
 public PVector position = new PVector();
 public PVector scale = new PVector();
 public PVector rgb = new PVector(255, 255, 255);
 
 public void spawn()
  {
   position.x = random(Window.left, Window.right + 1);
   position.y = random(Window.bottom, Window.top + 1);
  }
  
  public void rescale()
  {
   scale.x = random(0, 101);
  }
  
  public void recolor()
  {
    rgb.x = random(0, 256);
    rgb.y = random(0, 256);
    rgb.z = random(0, 256);
  }
  
  public void render()
  {
    fill(rgb.x, rgb.y, rgb.z);
    circle(position.x, position.y, scale.x);
  }
}
