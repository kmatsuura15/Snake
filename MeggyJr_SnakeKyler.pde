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

void setup()                    // run once, when the sketch starts
{
  MeggyJrSimpleSetup();      // Required code, line 2 of 2.
}

void loop()                     // run over and over again
{
  DrawPx(xcoord,ycoord,2);
  if (direction == 0){
    ycoord++;
    }
  if (direction == 90){
    xcoord++;
  }
  if (direction == 180){
    ycoord--;
  }
  if (direction == 270){
    xcoord--;
  }
  
}



