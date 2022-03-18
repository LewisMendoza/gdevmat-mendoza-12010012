public class Walker
{
  public PVector position = new PVector();
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
 
  public float scale;
  public float mass;
  public color Color;
  
  public void walkerReset()
  {
    this.scale = 0;
    this.mass = 0;
    this.Color = color(255, 255, 255);
    this.acceleration.mult(0);
    this.velocity.mult(0);
  }
  
  public Walker()
  {
    
  }
  
  // Apply the force given ex: wind
  public void applyForce(PVector force)
  {
   PVector f = PVector.div(force, this.mass);
   this.acceleration.add(f);
  }
  
  // Updates stats
  public void update()
  {
    this.velocity.add(this.acceleration);
    this.position.add(this.velocity);
    this.acceleration.mult(0);
  }
  
  // sets spawn position
  public void setSpawn(float posX, float posY)
  {
   this.position.x = posX;
   this.position.y = posY;
  }
  
  // sets the stat of the walker
  public void characterizeWalker(float mass)
  {
   this.mass = mass;
   this.scale = (mass * 15.0f);
   Color = color(random(0, 256), random(0, 256), random(0, 256));
  }
  
  public void render()
  {
   noStroke();
   fill(Color);
   circle(position.x, position.y, scale);
  }
  
  public void wallCollisionCheck()
  {
   if (this.position.y <= Window.bottom)
   {
      this.position.y = Window.bottom;
      this.velocity.y *= -1;
   }
   
   if (this.position.y >= Window.top)
   {
      this.position.y = Window.top;
      this.velocity.y *= -1;
   }
   
   if (this.position.x <= Window.left)
   {
      this.position.x = Window.left;
      this.velocity.x *= -1; 
   }
   
   if (this.position.x >= Window.right)
   {
      this.position.x = Window.right;
      this.velocity.x *= -1; 
   }
  }
}
