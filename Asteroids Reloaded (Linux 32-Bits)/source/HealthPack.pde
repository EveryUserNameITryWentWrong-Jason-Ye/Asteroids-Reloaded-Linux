class HealthPack extends Floater{ 

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


   public void damage(int n){
     health = health - n;
   }
   
   public HealthPack() {
     myCenterX = width + 30;
     myCenterY = height + 30;
     myDirectionX = (int)(Math.random()*7) - 3;
     myDirectionY = (int)(Math.random()*7) - 3;
    
   }
  
  
  
  
  public void show ()  //Draws the floater at the current position  
  {      
    fill(255);
    ellipse((int)myCenterX, (int)myCenterY, 40, 40);
    textSize(40);
    fill(0, 255, 0);
    text('+', (int)myCenterX - 15, (int)myCenterY + 12);
    
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


}
