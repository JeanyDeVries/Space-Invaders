class Enemies
{
  float size,x,y,speed;
  
  Enemies()
  {
    x = 0;
    y = 0;
    size = 40;
    speed = random(4, 6);
  }

  void Render()
  {
    fill(90);
    rect(x, y, size, size);
  }
  
  void Movement()
  {
    x += speed;
    if(x >= width - size || x <= 0)
    {
      x -= x;
      //x = 0;
      y += 50;  
    }
  }
  
  void Collision(float bulletX, float bulletY, float bulletWidth, float bulletHeight)
  {
    if(bulletX >= this.x + enemies.size && bulletX <= this.x && bulletY >= this.y && bulletY <= this.y + enemies.size)
    {
      println("Collision");
    }
  }
}
