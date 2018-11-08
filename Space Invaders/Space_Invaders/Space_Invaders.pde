//TODO: Make the game interactive with touch :D

boolean keys[] = new boolean[256];
Player player;
Bullet bullet;

Menu menu;
Enemies enemies;
Spawner spawner;
Timer timer;

boolean keyReleased = false;

void setup()
{
  size(1280, 720);
  player = new Player();
  menu = new Menu();
  enemies = new Enemies();
  spawner = new Spawner();
  timer = new Timer();
}

void draw()
{
  background(255, 40, 80);
  menu.draw();
}

void update()
{
  //player.Render();
  //player.Movement(keys);
  //player.outOfBounds();
  //player.Shoot();
  //player.renderBullets();
  //player.Collision();
  
  //timer.checkTime();
  
  //spawner.SpawnEnemies();
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
