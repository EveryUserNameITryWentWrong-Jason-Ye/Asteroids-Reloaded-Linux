class RotShield extends Floater{
  
  public void setX(int x) {
    myCenterX = x;
  }  
  
  public int getX() {
    return (int)myCenterX;
  }   
  
  public void setY(int y) {
    myCenterY = y;
  }
  
  public int getY() {
    return (int)myCenterY;
  }  
  
  public void setDirectionX(double x) {
    myDirectionX = x;
  }   
  
   public double getDirectionX() {
     return myDirectionX;
   }   
  
   public void setDirectionY(double y) {
     myDirectionY = y;
   }   
  
   public double getDirectionY() {
     return myDirectionY;
   }   
  
   public void setPointDirection(int degrees) {
     myPointDirection = degrees;
   }  
  
   public double getPointDirection() {
     return myPointDirection;
   } 

   public void setColor(int n) {
    myColor = n;
   }
   
   public int getColor() {
     return myColor;
   }

  public RotShield(Spaceship theShip){

    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection() + (int)(Math.random()*361) - 180;

  }

  public void show(){
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);

    noStroke();
    fill(255, 175, 0);
    ellipse(70, 0, 9, 9);
    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }



}
