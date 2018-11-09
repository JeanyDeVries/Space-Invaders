//TODO: Make the game interactive with touch :D

boolean keys[] = new boolean[256];
Player player;
Bullet bullet;

Menu menu;
Spawner spawner;
Timer timer;

boolean keyReleased = false;

void setup()
{
  size(1280, 720);
  player = new Player();
  menu = new Menu();
  spawner = new Spawner();
  timer = new Timer();
}

void update()
{
  
}

void draw()
{
  update();
  
  background(37, 92, 105);
  menu.draw();
}

void keyPressed()
{
  keys[key] = true;
}

void keyReleased()
{
  keys[key] = false; 
  keyReleased = true;
}
