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
    this.speed = 15;
  }
  
  void Render()
  {
    fill(0, random(255), random(255));
    rect(x + 7.5, y, Width, Height);
  }
  
  void Movement()
  {
    this.y -= speed;
  }
  
  void Collision()
  {
    enemies.Collision(this.x, this.y, Width, Height);
  }
}
