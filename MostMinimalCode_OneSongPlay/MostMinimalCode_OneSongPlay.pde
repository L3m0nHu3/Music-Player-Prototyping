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
  if (song1.isLooping() && song1.loopCount()!=-1) println("There are", song1.loopCount(), "loops left.");
  if (song1.isLooping() && song1.loopCount()==1) println("Looping Infinity");
  if ( song1.isPlaying() && !song1.isLooping() ) println("Play Once");
  println("Song position", song1.position(), "Song length", song1.length() );
} //End draw
//
void keyPressed() 
{
  //---------First Play Button---------
  //if ( key=='p' || key=='P' ) song1.play(); //Perameter is milli-seconds from start of audiofile to start playing
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
  if ( key=='M' || key=='m' ) {//Mute Button
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End Mute Button
  //
  if ( key=='f' || key=='F' ) song1.skip(5000); //Skip forward 1 second (1000 ms)
  if ( key=='r' || key=='R' ) song1.skip(-5000); //Skip backwards 1 second (1000 ms)
  //
  if ( key=='s' || key=='S' ) { //STOP button
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind();
    } else { //Song is not playing
      song1.rewind();
    }
  } //End STOP Button
  //
  if ( key==' ' || key=='p' || key=='P') {//PUASE Button
    if (song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length() - song1.length()*1/5 ) {
      song1.pause();
      song1.rewind();
    } else {
      song1.play();
    }
  }//End PAUSE Button
}//End keyPressed
void mousePressed() {
}// End mousePressed
//
//End MAIN Program
