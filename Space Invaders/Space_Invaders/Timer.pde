class Timer
{
  float huidigeTijd;
  float tijd;
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
      spawnEnemy = true;
    }
    
    if(millis() - tijd > 200)
    {
      tijd = millis();
      spawnBullet = true;
    }
  }
}
