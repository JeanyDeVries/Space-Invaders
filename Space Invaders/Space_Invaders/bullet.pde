class Bullet
{
  float y;
  float x;
  float speed;
  
  Bullet(float x, float y)
  {
    this.y = y;
    this.x = x;
    this.speed = 5;
  }
  
  void Render()
  {
    fill(0, random(255), random(255));
    rect(x + 7.5, y, 5, 10);
  }
  
  void Movement()
  {
    this.y -= speed;
  }
}
