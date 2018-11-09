class Enemy
{
  float size,x,y,speed;
  
  Enemy()
  {
    x = 0;
    y = 0;
    size = 40;
    speed = random(4, 6);
  }

  void Render()
  {
    fill(170, 135, 57);
    rect(x, y, size, size);
  }
  
  void Movement()
  {
    x += speed;
    if(x >= width - size || x <= 0)
    {
      x -= x;
      y += 50;  
    }
  }
}
