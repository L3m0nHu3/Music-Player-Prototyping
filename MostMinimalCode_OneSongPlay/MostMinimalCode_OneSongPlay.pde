import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//---------Global Variables---------
Minim minim; //Creates object to acess all functions
AudioPlayer song1; //creates a playlist
//
void setup() 
{
  minim = new Minim(this); //load from data drirectiory, loadFile should also load from a project folder, like loadImage
  song1 = minim.loadFile("/Users/danielhamilton/Downloads/BubbleGumKK.mp3"); //able to pass absoulte path 
  //
} //End setup
//
void draw() 
{
  if (song1.isLooping() && song1.loopCount()!=-1) println("There are", song1.loopCount(),"loops left.");
  if (song1.isLooping() && song1.loopCount()==1) println("Looping Infinity");
  if ( song1.isPlaying() && !song1.isLooping() ) println("Play Once");
} //End draw
//
void keyPressed() 
{
  //---------First Play Button---------
  if ( key==' ' || key=='p' || key=='P' ) song1.play(); //Perameter is milli-seconds from start of audiofile to start playing
  //
  //Alternate Play Button, as a finite loop() && infinite loop()
  //Only press a number for this code below
  println (key);
  if (key=='1') {//LOOP Function Once
    if ( key=='1' ) println("Looping Once");
    String keystr = String.valueOf(key);
    println("Number of Repeats is", keystr);
    int loopNum = int(keystr);
    song1.loop(loopNum); //Parameter is Pareameter is number of repeats
    //if (
  }//End LOOP Function Once
  if ( key=='i'|| key=='I' ) song1.loop(); //Infinite loop, no perameter OR -1
  if ( key >= '2' || key=='0') println ("I do not loop that much, press i for inifinite loop");
    //
}//End keyPressed
//
void mousePressed() {
}// End mousePressed
//
//End MAIN Program
