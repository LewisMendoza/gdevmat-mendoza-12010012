class Walker
{
  float x;
  float y;
  
  void render()
  {
   int r = int(random(1, 256));
   int g = int(random(1, 256));
   int b = int(random(1, 256));
   int a = int(random(50, 101));
   
   fill (r, g, b, a);
   circle(x, y, 15);
  }
  
  // default randomWalk()
  void randomWalk()
 {
   int rng = int(random(8));
   
   if (rng == 0) // goes north
   {
     y+=10;
   }
   
   else if (rng == 1) // goes south
   {
     y-=10;
   }
   
   else if (rng == 2) // goes east
   {
     x+=10;
   }
   
   else if (rng == 3) // goes west
   {
     x-=10;
   }
   
   if (rng == 4) // goes northeast
   {
    y+=10;
    x+=10;
   }
   
   else if (rng == 5) // goes northwest
   {
    y+=10;
    x-=10;
   }
   
   else if (rng == 6) // goes southeast
   {
     y-=10;
     x+=10;
   }
   
   else if (rng == 7) // goes southwest
   {
    y-=10;
    x-=10;
   }
 }
 
 // 30% chance to go up, 10% chance to go any other direction
 void randomWalkBiased()
 {
   int rng = int(random(10));
   
   if (rng == 0) // goes north
   {
     y+=10; 
   }
   
   else if (rng == 1) // goes south
   {
     y-=10;
   }
   
   else if (rng == 2) // goes east
   {
     x+=10;
   }
   
   else if (rng == 3) // goes west
   {
     x-=10;
   }
   
   if (rng == 4) // goes northeast
   {
    y+=10;
    x+=10;
   }
   
   else if (rng == 5) // goes northwest
   {
    y+=10;
    x-=10;
   }
   
   else if (rng == 6) // goes southeast
   {
     y-=10;
     x+=10;
   }
   
   else if (rng == 7) // goes southwest
   {
    y-=10;
    x-=10;
   }
   
   else if (rng == 8)
   {
     y+=10;
   }
   
   else if (rng == 9)
   {
     y+=10;
   }
 }
}
