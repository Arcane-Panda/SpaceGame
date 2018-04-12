class Laser
{
  int x, y;
  int startX, startY;
  int speed;
  color stroke;
  Laser(int x, int y, int speed, color stroke)
  {

    this.x = x;
    this.y = y;
    this.speed = speed;
    this.stroke = stroke;
  }

  void fire()
  {
    y -= speed;
  }

  void display()
  {
    //#00ffff
    stroke(stroke);
    line(x, y, x, y-20);
    
  }

  boolean reachedTop()
  {
    if (y < 0 - 50)
    {
      return true;
    } else
    {
      return false;
    }
  }
  
  boolean reachedBottom()
  {
    if (y >= height)
    {
     return true;
    } else
    {
      return false;
    }
  }
}