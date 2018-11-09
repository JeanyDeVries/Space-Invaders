class Spawner
{
  ArrayList<Enemy> enemy = new ArrayList<Enemy>();
  boolean collision = false;

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
  
  void Delete()
  {
    ArrayList<Enemy> newEnemy = new ArrayList<Enemy>();
    for(int i = 0; i < enemy.size(); i++)
    {
      //Enemy enemy2 = enemy.get(i);
      if(!(collision))
      {
        newEnemy.add(enemy.get(i));  
        collision = false;
      }
    }
    enemy = newEnemy;
  }
}
