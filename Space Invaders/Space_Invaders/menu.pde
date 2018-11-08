class Menu
{
  final int stateMenu = 0;
  final int game = 1;
  final int quit = 2;
  int state = stateMenu;
  
  PImage button;
  PFont font;
  
  Menu()
  {
    font = createFont("Font.ttf", 100);
    button = loadImage("Button.png");
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
    
    background(70, 115, 134);
    fill(0);
    textSize(32);
    image(button, buttonX, buttonY_Start, buttonWidth, buttonHeight);
    image(button, buttonX, buttonY_Quit, buttonWidth, buttonHeight);
    
    textAlign(CENTER, CENTER);
    textFont(font);
    text("SPACE-INVADERS", width/2, 150);
    textFont(font, 70);
    textAlign(CENTER, TOP);
    text("Start",buttonX + buttonWidth/2, buttonY_Start + buttonHeight/4);
    text("Quit",buttonX + buttonWidth/2, buttonY_Quit + buttonHeight/4);
    
    if(mouseX > buttonX && mouseX < buttonX + buttonWidth && mouseY > buttonY_Start && mouseY < buttonY_Start + buttonHeight)
    {
      tint(150);
      if(mousePressed)
      {
        state = game;
      }
    }
    
    if(mouseX > buttonX && mouseX < buttonX + buttonWidth && mouseY > buttonY_Quit && mouseY < buttonY_Quit + buttonHeight && mousePressed)
    {
      state = quit;
    }
  }
  
  void showGame()
  {
    player.Render();
    player.Movement(keys);
    player.outOfBounds();
    player.Shoot();
    player.renderBullets();
    player.Collision();
    
    timer.checkTime();
    
    spawner.SpawnEnemies();
  }
  
  void quitGame()
  {
    exit(); 
  }
}
