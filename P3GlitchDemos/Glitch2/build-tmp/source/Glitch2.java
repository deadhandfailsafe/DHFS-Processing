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

public class Glitch2 extends PApplet {


Capture cap;
PImage img;
int c1;

public void setup() {
  size(600,750);
  background(0);
  img = loadImage("chigurh.jpg");
  img.resize(601,751);
  frameRate(600);
}

public void draw() {
  img.loadPixels();
  float rx1=random(img.width);
  int x1=PApplet.parseInt(rx1);
  int x2=0;
  float ry1=random(img.height);
  int y1=PApplet.parseInt(ry1);
  int f1=0;
  int if1=0;
  while(f1<40)
  {
    for(int f2=0;f2<20;f2++)
    {
      for(int f3=0;f3<15;f3++)
      {
        c1 = img.get(x1,y1);
        while(if1<20)
        {
          int c0 = img.get(x1,y1);
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
      triangle(x1,y1-10,x1-15,y1+15,x1+15,y1+15);
      float rz1=random(0,200);
      int z1=PApplet.parseInt(rz1);
      x1=x1+z1;
    }
    x1=0;
    y1=y1+30;
    f1=f1+10;
  }

}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Glitch2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
