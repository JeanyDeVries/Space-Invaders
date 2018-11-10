class Spawner
{
  ArrayList<Enemy> enemy = new ArrayList<Enemy>();
  boolean death = false;

  Spawner()
  {
    
  }
  
  void SpawnEnemies()
  {
    if(timer.spawnEnemy)
    {
      enemy.add(new Enemy());
      timer.spawnEnemy = false;
    }
    
    for(Enemy enemy : enemy)
    {
      enemy.Render();
      enemy.Movement();
    }
  }
}
