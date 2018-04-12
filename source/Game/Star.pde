class Star
{
  int x, y;

  Star()
  {
    x = int(random(width));
    y = int(random(height));
  }

  void display()
  {
    fill(255);
    noStroke();
    ellipse(x, y, 5, 6);
    y += 20;
    if ( y >= height)
    {
      y = 0;
      x = int(random(width));
    }
  }
}