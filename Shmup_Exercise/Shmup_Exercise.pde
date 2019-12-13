Player player;

ArrayList<Projectile> bullets;

void setup()
  {
    size(1500, 900);
    smooth();
    frameRate(30);
    player = new Player(200, height/2, 40, 40, 130, 20, 5);
    bullets = new ArrayList<Projectile>();
  }

void draw()
  {
    background(0);
    player.playerMovement();
    player.display();
    
    for (int i = 0; i < bullets.size(); i++)
    { 
    Projectile p = bullets.get(i);
    p.projectileDisplay();
    }
  }

void mousePressed()
  {
    for (int i = 0; i < 100; i++)
    {
    bullets.add(new Projectile(player.posX, player.posY, 10));
    }
  }
