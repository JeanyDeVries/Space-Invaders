class Spawner
{
  ArrayList<Enemies> enemies = new ArrayList<Enemies>();

  Spawner()
  {
    
  }
  
  void SpawnEnemies()
  {
    if(timer.spawnEnemy)
    {
      enemies.add(new Enemies());
      timer.spawnEnemy = false;
    }
    
    for(Enemies enemies : enemies)
    {
      enemies.Render();
      enemies.Movement();
    }
  }
}
