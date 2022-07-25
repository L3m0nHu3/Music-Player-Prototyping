import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; //Creates object to acess all functions
AudioPlayer song1; //creates a playlist
//
void setup() 
{
  minim = new Minim(this); //load from data drirectiory, loadFile should also load from a project folder, like loadImage
  song1 = minim.loadFile("/Users/danielhamilton/Downloads/BubbleGumKK.mp3"); //able to pass absoulte path 
  song1.play (); //Perameter is milli-seconds from start of audiofile to start playing
} //End setup
//
void draw() {
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
}// End mousePressed
//
//End MAIN Program
