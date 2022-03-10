public class BlackHole
{
  public PVector position = new PVector();
  public float scale = 50;
  public float r = 255, g = 255, b = 255, a = 255;
  
  // Set the position of the black hole randomly
  public void render()
  {
    position.x = mouseX - Window.windowWidth;
    position.y = -(mouseY - Window.windowHeight);
    
    fill(255, 255, 255);
    circle(position.x, position.y, scale);
  }
  
  // Getters
  public float getPosX()
  {
   return position.x; 
  }
  
  public float getPosY()
  {
   return position.y; 
  }
  
  public float getScale()
  {
   return scale; 
  }
}
