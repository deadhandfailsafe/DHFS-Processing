import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.video.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Glitchcam extends PApplet {


Capture cap;
PImage img;
int c1;

public void setup() {
  size(640,480);
  background(0);
  // img = loadImage("chigurh.jpg");
  // img.resize(601,751);
  frameRate(10);
  cap = new Capture(this, width, height); // set width, height and frame rate here
  cap.start();
}

public void draw() {
  // image(cap, 0, 0);
  cap.loadPixels();
  float rx1=random(cap.width);
  int x1=PApplet.parseInt(rx1);
  int x2=0;
  float ry1=random(cap.height);
  int y1=PApplet.parseInt(ry1);
  int f1=0;
  int if1=0;
  while(f1<40)
  {
    for(int f2=0;f2<30;f2++)
    {
      for(int f3=0;f3<20;f3++)
      {
        c1 = cap.get(x1,y1);
        while(if1<20)
        {
          int c0 = cap.get(x1,y1);
          c1 = lerpColor(c0,c1,.50f);
          x1++;
          x2++;
          if1++;
        }
        x1-=x2;
        x2=0;
        if1=0;
        y1++;
        if1+=f3;
      }
      y1-=20;
      fill(c1);
      noStroke();
      rect(x1,y1,x1+10,y1+10);
      float rz1=random(0,30);
      int z1=PApplet.parseInt(rz1);
      x1=x1+z1;
    }
    x1=0;
    y1=y1+10;
    f1=f1+1;
  }

}

public void captureEvent(Capture cap) {
  cap.read();
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Glitchcam" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
