//
int x = mouseX;
int y = mouseY;
ArrayList<Laser> lasers;
ArrayList<Missle> missles;
Star[] myStars;
Rock[] rocks = new Rock[6];
int health = 3;
int missleCount = 3;
PImage leftUI;
PImage rightUI;
PImage heart1;
PImage heart2;
PImage heart3;
PImage missleUI2;
PImage missleUI1;
PImage missleUI3;
PImage enemy;
int laserTimer;

Spaceship player = new Spaceship(x, y, true);
Enemy testEnemy = new Enemy();
//Laser laserTest = new Laser(10, x, y);

void setup()
{
  leftUI = loadImage("bar.png");
  rightUI = loadImage("bar2.png");
  heart1 = loadImage("heart.png");
  heart2 = loadImage("heart.png");
  heart3 = loadImage("heart.png");
  missleUI1 = loadImage("missle ui.png");
  missleUI2 = loadImage("missle ui.png");
  missleUI3 = loadImage("missle ui.png");
  enemy = loadImage("enemy.png");
  enemy.resize(115, 103);
  //fullScreen();
  size(1000, 1000);

  for (int i = 0; i < rocks.length; i ++)
  {
    rocks[i] = new Rock(random(1.5));
  }
  lasers = new ArrayList();
  missles = new ArrayList();
  myStars = new Star[50];
  for (int i = 0; i < myStars.length; i ++)
  {
    myStars[i] = new Star();
  }
}

void draw()
{
  background(0);
  laserTimer++;

  player.display();
  player.follow();

  for (int i = lasers.size() - 1; i >= 0; i --)
  {
    Laser laser = (Laser) lasers.get(i);
    laser.fire();
    laser.display();
    if (laser.reachedTop() || laser.reachedBottom())
    {
      lasers.remove(laser);
      //laser.y = height;
    }
  }
  for (int i = missles.size() - 1; i >= 0; i --)
  {
    Missle missle = (Missle) missles.get(i);
    missle.fire();
    missle.display();
    if (missle.reachedTop())
    {
      lasers.remove(missle);
      //laser.y = height;
    }
  }


  for (int i = 0; i < myStars.length; i++)
  {
    myStars[i].display();
  }
  testEnemy.display();
  testEnemy.movement();
 
  for (int i = 0; i < rocks.length; i++)
  {
    rocks[i].display();
  }
  if(laserTimer == 30)
  {
    lasers.add(new Laser(testEnemy.x - 35, testEnemy.y + 29, -10, #00ff00));
    lasers.add(new Laser(testEnemy.x + 35, testEnemy.y + 29, -10, #00ff00));
    laserTimer = 0;
  }
  drawUI();
}
void mousePressed()
{
  if (mouseButton == LEFT)
  {
    lasers.add(new Laser(player.x -35, player.y + 29, 10, #00ffff));
    lasers.add(new Laser(player.x + 35, player.y + 29, 10, #00ffff));
  } else
  {
    if (missleCount > 0)
    {
      missles.add(new Missle(player.x - 35, player.y -10));
      missleCount -=1;
    }
  }
}

void drawUI()
{
  leftUI.resize(400, 100);
  image(leftUI, 0, height-150);
  heart1.resize(100, 90);
  heart2.resize(100, 90);
  heart3.resize(100, 90);
  if (health == 3)
  {
    image(heart1, 0, height - 150);
    image(heart2, 100, height - 150);
    image(heart3, 200, height - 150);
  } else if (health == 2)
  {
    image(heart1, 0, height - 150);
    image(heart2, 100, height - 150);
  } else if (health == 1)
  {
    image(heart1, 0, height - 150);
  }
  //text("right click for missles", width -400, height -200);
  rightUI.resize(400, 100);
  missleUI1.resize(int(68*1.5), int(108*1.5));
  missleUI2.resize(int(68*1.5), int(108*1.5));
  missleUI3.resize(int(68*1.5), int(108*1.5));
  image(rightUI, width -400, height-150);
  if (missleCount == 3)
  {
    image(missleUI1, width - 100, height - 190);
    image(missleUI2, width - 200, height - 190);
    image(missleUI3, width - 300, height - 190);
  } else  if (missleCount == 2)
  {
    image(missleUI1, width - 100, height - 190);
    image(missleUI2, width - 200, height - 190);
  } else  if (missleCount == 1)
  {
    image(missleUI1, width - 100, height - 190);
  } else 
  {
  }
}