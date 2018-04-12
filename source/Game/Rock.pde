class Rock
{
  int x, y;
  PImage rock;
  int w = int(random(50,300));
  int s;
  

  Rock(float r)
  {
    x = int(random(width));
    y = (0);
    s = int(random(3,10));
    rock = loadImage("rock.png");
    rock.resize(w, w);
    
   // rotate(PI/r);
  }

  void display()
  {
    image(rock, x, y);
    y += s;
    if(y >=height+20)
    {
      y = -300;
      x = int(random(width));
      w = int(random(50,300));
      s = int(random(3,10));
    }
  }
}