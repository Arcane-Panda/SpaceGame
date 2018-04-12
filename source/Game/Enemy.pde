class Enemy //<>//
{
  int x, y;
  int dir = 1;
  int timer;

  Enemy()
  {

    x = 1000/2;
    y = -100;
  }

  void display()
  {
    image(enemy, x, y);
  }
  void movement()
  {
    //Move down onto screen
    if (y != 100)
    {
      y += 5;
    }
    // Left right repeat
    x += 5 * dir;
    if (x >= width)
    {
      dir = -1;
    } else if (x <= 0 && dir == -1)
    {
      dir = 1;
    }
  }

  //<>//
    
    
  
}