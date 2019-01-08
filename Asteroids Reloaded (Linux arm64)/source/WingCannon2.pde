class WingCannon2 extends Floater{
  
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
   
    private float heightAdd;
   private float widthAdd;
   
   public void setHeightAdd(float n){
     heightAdd = n;
   }
   
   public float getHeightAdd(){
     return heightAdd;
   }
   
   public void setWidthAdd(float n){
     widthAdd = n;
   }
   
   public float getWidthAdd(){
     return widthAdd;
   }

  public WingCannon2(Spaceship theShip){

    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 6 * Math.cos(dRadians) + theShip.getDirectionX();
    myDirectionY = 6 * Math.sin(dRadians) + theShip.getDirectionY();

  }

  public void show(){
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);

    noStroke();
    fill(143, 255, 0);
    ellipse(16, -25, 30 + widthAdd, 4 + heightAdd);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
  
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

  }



}
