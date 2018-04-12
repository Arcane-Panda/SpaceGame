class Missle
{
  int x, y;
  int startX, startY;
  int speed;
  PImage missle;
  Missle(int x, int y)
  {

    this.x = x;
    this.y = y;
    speed = 10;
    missle = loadImage("missle ui.png");
  }

  void fire()
  {
    y -= speed;
  }

  void display()
  {
    image(missle, x, y);
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
}