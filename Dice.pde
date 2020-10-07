int dotNum;
void setup()
{
  noLoop();
  size(500, 500);
}
void draw()
{ 
  background(0);
  int total = 0;
  for(int y = 50; y <= 400; y+=50)
  {
    for (int x = 50; x <=400; x+=50)
    {
      Die bob = new Die(x, y);
      bob.show();
      bob.roll();       
      total = total + bob.dotNum;
    }
  }
  fill(255);
  textSize(25);
  text("Dots Count: " + total, 150, 470);
}
void mousePressed()
{
  redraw();
}
class Die //single dice cube
{
  //variable declarations here
  int dotNum = (int)((Math.random()*6)+1);
  int myX, myY;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
     dotNum = (int)((Math.random()*6)+1);
     
     if(dotNum ==1)
    {
      oneDot();
    }
      else if (dotNum == 2)
      {
        twoDots();
      }
      else if (dotNum == 3)
      {
        threeDots();
      }
      else if (dotNum == 4)
      {
        fourDots();
      }
      else if (dotNum == 5)
      {
        fiveDots();
      }
      else if (dotNum == 6)
      {
        sixDots();
      }
  }
  
  void diceColor()
  {
    int colors = (int)((Math.random()*3)+1);
    if (colors == 1)
      fill(244, 246, 176);
    else if (colors == 2)
      fill(207, 252, 207);
    else
      fill(200, 246, 263);
   }
   
  void show()
  {
    noStroke();
    fill(255);
    diceColor();
    rect(myX, myY, 45, 45, 10);
    fill (0);
  }
  
  void oneDot()
  {
    ellipse(myX+20, myY+20, 8, 8);
  }
  
  void twoDots()
  {
    ellipse(myX+10, myY+10, 8, 8);
    ellipse(myX+30, myY+30, 8, 8);
  }
  
  void threeDots()
  {
    oneDot();
    twoDots();
  }
  
  void fourDots()
  {
    twoDots();
    ellipse(myX+10, myY+30, 8, 8);
    ellipse(myX+30, myY+10, 8, 8);
  }
    
  void fiveDots()
  {
    oneDot();
    fourDots();
  }
  
  void sixDots()
  {
    fourDots();
    ellipse(myX+10, myY+20, 8, 8);
    ellipse(myX+30, myY+20, 8, 8);
  }
}
