class Timer
{
  float huidigeTijd;
  boolean spawnBullet = false;
  boolean spawnEnemy = false;
  
  Timer()
  {
    huidigeTijd = millis();
  }
  
  void checkTime()
  {
    if(millis() - huidigeTijd > 1000)
    {
      huidigeTijd = millis();
      spawnBullet = true;
      spawnEnemy = true;
    }
  }
}
