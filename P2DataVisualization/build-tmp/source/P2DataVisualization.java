import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class P2DataVisualization extends PApplet {

String[] gamelog;
int counter = 1509;

String delimiters = " ,.?!;:[]()*-\u00ae+ -";

public void setup() 
{  
  size(600, 50);
  background(120);
  
  String[] rawtext = loadStrings("gamelog.txt");
  String everything = join(rawtext, "" );
  gamelog = splitTokens(everything,delimiters);
  frameRate(5);
}

public void draw() {
  background(255);
  
  // Pick one word from King Lear
  String theword = "brain";
  
  // Count how many times that word appears in King Lear
  int total = 0;
  for (int i = 0; i < gamelog.length; i ++ ) {
    if (theword.equals(gamelog[i])) {
      total ++;
    }
  }
  
  // Display the text and total times the word appears
  fill(0);
  text(total+" "+theword+" injurie(s)",5,25);
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "P2DataVisualization" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
