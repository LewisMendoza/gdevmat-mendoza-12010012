public class Walker
{
 //Declare and initialize required stats
 public PVector position = new PVector();
 public PVector velocity = new PVector();
 public PVector acceleration = new PVector();
 
 public float velocityLimit = 10.0f;
 public float scale;
 public float mass = 0;
 public color Color;
 public float r, g, b, a;
 
 public Walker()
 {
   
 }
 
 // Applies force given
 public void applyForce(PVector force)
 {
   PVector f = PVector.div(force, this.mass);
   this.acceleration.add(f);
 }
 
 // Updates stats
 public void update()
 {
   this.velocity.add(this.acceleration);
   this.velocity.limit(velocityLimit);
   this.position.add(this.velocity);
   this.acceleration.mult(0);
 }
 
 // Sets spawnpoint
 public void spawn()
 {
  this.position.x = -500;
  this.position.y = 200;
 }
 
 // Sets the characteristics of the walker
 public void characterizeWalker()
 {
   this.mass = random(1.0f,10.0f);
   this.scale = (mass * 15.0f);
   Color = color(random(0, 256), random(0, 256), random(0, 256));
 }
 
 // Renders walker into the screen
 public void render()
 {
   noStroke();
   fill(Color);
   circle(position.x, position.y, scale);
 }
}
