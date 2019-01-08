class Spaceship extends Floater  
{  
  
  
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
   

  
  public void Exhaust(){
    fill(77, 173, 255);
    ellipse((int)myCenterX, (int)myCenterY, 10 + (int)(Math.random()*3) - 1, -50 + (int)(Math.random()*13) - 6);
  }



   public Spaceship() {

    corners = 25;
    xCorners = new float[corners];
    yCorners = new float[corners];
    
    //1
    xCorners[0] = 7*3.5;
    yCorners[0] = 0*3.5;
    //2
    xCorners[1] = 14*3.5;
    yCorners[1] = 1*3.5;
    //3
    xCorners[2] = 5*3.5;
    yCorners[2] = 2.5*3.5;
    //4
    xCorners[3] = 3*3.5;
    yCorners[3] = 1*3.5;
    //5
    xCorners[4] = 1*3.5;
    yCorners[4] = 1.5*3.5;
    //6
    xCorners[5] = 4*3.5;
    yCorners[5] = 11*3.5;
    //7
    xCorners[6] = 8*3.5;
    yCorners[6] = 11*3.5;
    //8
    xCorners[7] = 4*3.5;
    yCorners[7] = 12*3.5;
    //9
    xCorners[8] = 0*3.5;
    yCorners[8] = 11*3.5;
    //10
    xCorners[9] = 3*3.5;
    yCorners[9] = 11*3.5;
    //11
    xCorners[10] = -3*3.5;
    yCorners[10] = 3*3.5;
    //12
    xCorners[11] = -3*3.5;
    yCorners[11] = 2*3.5;
    //13
    xCorners[12] = -4.5*3.5;
    yCorners[12] = 1*3.5;
    //14
    xCorners[13] = -4.5*3.5;
    yCorners[13] = -1*3.5;
    //15
    xCorners[14] = -3*3.5;
    yCorners[14] = -2*3.5;
    //16
    xCorners[15] = -3*3.5;
    yCorners[15] = -3*3.5;
    //17
    xCorners[16] = 3*3.5;
    yCorners[16] = -11*3.5;
    //18
    xCorners[17] = 0*3.5;
    yCorners[17] = -11*3.5;
    //19
    xCorners[18] = 4*3.5;
    yCorners[18] = -12*3.5;
    //20
    xCorners[19] = 8*3.5;
    yCorners[19] = -11*3.5;
    //21
    xCorners[20] = 4*3.5;
    yCorners[20] = -11*3.5;
    //22
    xCorners[21] = 1*3.5;
    yCorners[21] = -1.5*3.5;
    //23
    xCorners[22] = 3*3.5;
    yCorners[22] = -1*3.5;
    //24
    xCorners[23] = 5*3.5;
    yCorners[23] = -2.5*3.5;
    //25
    xCorners[24] = 14*3.5;
    yCorners[24] = -1*3.5;

    
  }
   
  
}
