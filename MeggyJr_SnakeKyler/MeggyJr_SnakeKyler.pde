#include <MeggyJrSimple.h>    // Required code, line 1 of 2.
//create instance variables for player X, player Y
//create a direction variable (It will be an int)
//each time through the loop 
//if direction is 0, add one to y
//if direction is 180, decrease y
//if direction is 270, decrease x
//if direction is 90, add one to y
//adjust (or correct) values.  (If x is greater than 7 make it 0)
//draw the player and display the slate.
//ClearSlate


int xcoord = 0;    //initial xcoordinate
int ycoord = 0;    //initial ycoordinate
int direction = 0;    //direction variable
int xApple = random(8);
int yApple = random(8);
boolean ateApple = false;

void setup()                    // run once, when the sketch starts
{
  MeggyJrSimpleSetup();      // Required code, line 2 of 2.
}

void loop()                     // run over and over again
{
  DrawPx(xcoord,ycoord,2);    //Draws a blue pixel at (0,0)\
  DrawPx(xApple,yApple,Green);
  DisplaySlate();
  delay(200);    //shows the pixel for 200 milliseconds before clearing
  ClearSlate();    //Clears the old pixel
  CheckButtonsDown();    //Checks if any button was down
    if (Button_Up){    //Button_Up is equal to direction 0 
      direction = 0;
    }
    if (Button_Down){    //Button_Down is equal to direction 180
      direction = 180;
    }
    if (Button_Right){    //Button_Right is equal to direction 90
      direction = 90;
    }
    if (Button_Left){    //Button_Left is equal to direction 270
      direction = 270;
    }
   
    
    if (direction == 0){    //Direction 0 is up, which is ycoord++
        ycoord++;
      }
    if(ycoord > 7 ){    //If the ycoord is greater than 8, loop it back to the bottom.
      ycoord = 0;
    }
    if (direction == 90){    //Directoin 90 is right, which is xcoord++
      xcoord++;
    }
   if (xcoord > 7){    //If the xcoord is greater than 8, loop it back to the left side.
      xcoord = 0;
    }
   if (direction == 180){    //Direction 180 is down, which is ycoord--.
      ycoord--;
     }
   if (ycoord < 0){    //If the ycoord is less than 0, loop it to the top.
      ycoord = 7;
    }
   if (direction == 270){    //Direction 270 is left, which is xcoord--.
      xcoord--;
    }
    if (xcoord < 0){    //If the xcoord is less than 0, loop it to the right.
      xcoord = 7;  
    }
   
    if (ateApple){
      xApple = random(8);
      yApple = random(8);
      ateApple = false;
    }
    
    if (xcoord == xApple && ycoord == yApple){
      ateApple = true;
    }
    
    
     
   
}






