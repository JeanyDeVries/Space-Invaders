class Menu
{ 
  final int stateMenu = 0;
  final int game = 1;
  final int quit = 2;
  int state = stateMenu;
  
  PImage buttonStart;
  PImage buttonQuit;
  PImage buttonOver;
  PFont font;
  
  Menu()
  {
    font = createFont("Font.ttf", 100);
    buttonStart = loadImage("Button.png");
    buttonQuit = loadImage("Button.png");
    buttonOver = loadImage("ButtonOver.png");
  }
  
  void draw()
  {
    switch(state)
    {
      case stateMenu:
        showMenu();
        break;
      case game:
        showGame();
        break;
      case quit:
        quitGame();
        break;
    }
  }
  
  void showMenu()
  {
    int buttonX = width/2 - 150;
    int buttonY_Start = height/2;
    int buttonY_Quit = height/2 + 125;
    int buttonWidth = 300;
    int buttonHeight = 100;
    PImage startImage;
    PImage quitImage;
    
    if(mouseX > buttonX && mouseX < buttonX + buttonWidth && mouseY > buttonY_Start && mouseY < buttonY_Start + buttonHeight)
    {
      startImage = buttonOver;
      if(mousePressed)
      {
        state = game;
      }
    }
    else
    {
      startImage = buttonStart;
    }

    if(mouseX > buttonX && mouseX < buttonX + buttonWidth && mouseY > buttonY_Quit && mouseY < buttonY_Quit + buttonHeight)
    {
      quitImage = buttonOver;
      if(mousePressed)
      {
        state = quit;
      }
    }
    else
    {
      quitImage = buttonQuit;
    }
    
    background(70, 115, 134);
    fill(0);
    textSize(32);
    image(startImage, buttonX, buttonY_Start, buttonWidth, buttonHeight);
    image(quitImage, buttonX, buttonY_Quit, buttonWidth, buttonHeight);
    
    textAlign(CENTER, CENTER);
    textFont(font);
    text("SPACE-INVADERS", width/2, 150);
    textFont(font, 70);
    textAlign(CENTER, TOP);
    text("Start",buttonX + buttonWidth/2, buttonY_Start + buttonHeight/4);
    text("Quit",buttonX + buttonWidth/2, buttonY_Quit + buttonHeight/4);
  }
  
  void showGame()
  {
    player.Render();
    player.Movement(keys);
    player.outOfBounds();
    player.Shoot();
    player.renderBullets();
    
    timer.checkTime();
    
    spawner.SpawnEnemies();
    
    //Collision
    for(int i = 0; i < spawner.enemy.size(); i++)
    {
      for(int t = 0; t < player.bullets.size(); t++)
      {
        if(player.bullets.get(t).x <= spawner.enemy.get(i).x + spawner.enemy.get(i).size &&
          player.bullets.get(t).x >= spawner.enemy.get(i).x &&
          player.bullets.get(t).y >= spawner.enemy.get(i).y &&
          player.bullets.get(t).y <= spawner.enemy.get(i).y + spawner.enemy.get(i).size)
        {
          enemySound.rewind();
          enemySound.play();
          spawner.enemy.remove(i);
          player.bullets.remove(t);
        }
      }      
    }
  }
  
  void quitGame()
  {
    exit(); 
  }
}
