class Player
{
  float x, y, speed, size;
  ArrayList<Bullet> bullets = new ArrayList<Bullet>();
  
  Player()
  {
    x = width/2;
    y = 700;
    size = 50;
    speed = 15;
  }
  
  void Render()
  {
    fill(170, 70, 57);
    rect(x, y, size, size);
  }
  
  void Movement(boolean[] keys)
  { 
    if(keys['a'])
    {
      x -= 1 + speed;
    }
    if(keys['d'])
    {
      x += 1 + speed;
    }
    if(keys[' '])
    {
      if(keyReleased && timer.spawnBullet)
      {
        bullets.add(new Bullet(x, height - size * 2));
        keyReleased = false;
        timer.spawnBullet = false;
      }
    }
  }
  
  void renderBullets()
  {
    for(Bullet bullets : bullets)
    {
      bullets.Render();
    }
  }
  
  void Shoot()
  {
    for(Bullet bullets : bullets)
    {
      bullets.Movement();
    }
  }
  
  void outOfBounds()
  {
    if(x < 0)
    {
      x = 0;
    }
    if(x >= width)
    {
      x = width - size;
    }
  } 
}
