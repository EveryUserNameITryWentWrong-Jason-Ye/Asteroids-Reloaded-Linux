class Bossteroid extends Floater{ 

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

   public void setHealth(int i) {
     health = i;
   }

   public int getHealth() {
     return health;

   }
   
   private int rotSpd = ((int)(Math.random()*9)) - 4;
   private int health = 1000;

   public void damage(int n){
     health = health - n;
   }
   
   public Bossteroid() {
     
     float size = (float)(Math.random()*4) + 20;
     corners = 6;
     xCorners = new float[corners];
     yCorners = new float[corners];

     xCorners[0] = ((int)(Math.random()*3) + 10)*size;
     yCorners[0] = ((int)(Math.random()*1) + 0)*size;

     xCorners[1] = ((int)(Math.random()*4) + 6)*size;
     yCorners[1] = ((int)(Math.random()*2) + 7)*size;

     xCorners[2] = ((int)(Math.random()*1) + 0)*size;
     yCorners[2] = ((int)(Math.random()*5) + 12)*size;

     xCorners[3] = ((int)(Math.random()*2) + -5)*size;
     yCorners[3] = ((int)(Math.random()*2) + 6)*size;

     xCorners[4] = ((int)(Math.random()*6) + -8)*size;
     yCorners[4] = ((int)(Math.random()*1) + 2)*size;

     xCorners[5] = ((int)(Math.random()*4) + -5)*size;
     yCorners[5] = ((int)(Math.random()*5) + -9)*size; 
     
   }
  
   public void move(){
   
      //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX > width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX < 0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY > height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   

   }
   
   public void spin(){
    turn(rotSpd);
   }

}
