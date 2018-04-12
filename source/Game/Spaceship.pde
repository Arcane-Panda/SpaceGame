  class Spaceship
{
  int x, y;

  boolean follow;

  Spaceship(int x, int y, boolean follow)
  {
    this.x = x;
    this.y = y;
    this.follow = follow;
  }
  void display()
  {
    //body
    noStroke();
    fill(255); //9B9B9B
    quad(x, y, x+50, y+75, x, y+50, x-50, y+75);

    //booster
    fill(150);
    quad(x-5, y+50, x+5, y+50, x+5, y+70, x-5, y+70);


    //boost
    strokeWeight(5);
    stroke(255, 0, 0);
    fill(255, 140, 5);
    ellipse(x, y+80, 10, 40);

    //left guns
    strokeWeight(6);
    stroke(255); //9B9B9B
    line(x-35, y+28, x-35, y+60);

    stroke(255, 0, 0); //0,255,0
    line(x-35, y+28, x-35, y+29);

    stroke(255); //9B9B9B
    line(x-50, y+45, x-50, y+80);

    stroke(255, 0, 0); //0,255,0
    line(x-50, y+45, x-50, y+46);


    //right guns
    stroke(255);
    line(x+35, y+29, x+35, y+61);

    stroke(255, 0, 0);
    line(x+35, y+29, x+35, y+31);

    stroke(255);
    line(x+50, y+45, x+50, y+80);

    stroke(255, 0, 0);
    line(x+50, y+45, x+50, y+46);

    //window
    strokeWeight(2);
    fill(5, 239, 245); //0
    ellipse(x, y+25, 15, 30);
  }

  void follow()
  {
    if (follow)
    {
      x = mouseX;
      y = mouseY;
    }
  }
}