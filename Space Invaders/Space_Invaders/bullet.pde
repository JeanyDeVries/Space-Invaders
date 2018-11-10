class Bullet
{
  float y;
  float x;
  float Width;
  float Height;
  float speed;
  
  Bullet(float x, float y)
  {
    this.y = y;
    this.x = x;
    Width = 10;
    Height = 15;
    this.speed = 20;
  }
  
  void Render()
  {
    fill(255);
    rect(x + 7.5, y + 50, Width, Height);
  }
  
  void Movement()
  {
    this.y -= speed;
  }
}
