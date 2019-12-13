class Projectile
{
  
  float projX, projY, speed;
  
  PImage image;
  
  Projectile(float tempX, float tempY, float tempSpeed)
  {
    projX = tempX;
    projY = tempY;
    speed = tempSpeed;
    this.image = loadImage("bullet.jpg");
    this.image.resize(200, 0);
  }
  
  void projectileDisplay()
  {
    projX = projX + speed;
    image(this.image, this.projX, this.projY);
  }
}
