class Enemies
{
  float size,x,y,speed;
  
  Enemies()
  {
    x = 0;
    y = 0;
    size = 20;
    speed = random(4, 8);
  }

  void Render()
  {
    fill(90);
    rect(x, y, size, size);
  }
  
  void Movement()
  {
    x += speed;
    
    if(x > width - size || x < 0)
    {
      x = -x;
      y = y + 5;  
    }
  }
}
