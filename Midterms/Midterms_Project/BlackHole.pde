public class BlackHole
{
  public PVector position = new PVector();
  public float scale = 50;
  public float r = 255, g = 255, b = 255, a = 255;
  
  public void spawn()
  {
   position.x = random(Window.left, Window.right + 1);
   position.y = random(Window.bottom, Window.top + 1);
  }
  
  public void render()
  {
    fill(255, 255, 255);
    circle(position.x, position.y, scale);
  }
}
