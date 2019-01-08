class Star{
  private int myX;
  private int myY;

  public Star(){
    myX = (int)(Math.random()*1369) + 1;
    myY = (int)(Math.random()*1369) + 1;
    }

    public void show(){
      fill(255, 247, 0);
      ellipse(myX, myY, 4, 4);
      if(myY == 1005){
          myY = 0;
          myX = (int)(Math.random()* 999) + 1;
        }
    
    }

    public void move(){
        myY = myY + 3;
        }

}
