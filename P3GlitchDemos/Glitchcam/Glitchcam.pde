import processing.video.*;
Capture cap;
PImage img;
color c1;

void setup() {
  size(640,480);
  background(0);
  // img = loadImage("chigurh.jpg");
  // img.resize(601,751);
  frameRate(10);
  cap = new Capture(this, width, height); // set width, height and frame rate here
  cap.start();
}

void draw() {
  // image(cap, 0, 0);
  cap.loadPixels();
  float rx1=random(cap.width);
  int x1=int(rx1);
  int x2=0;
  float ry1=random(cap.height);
  int y1=int(ry1);
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
          color c0 = cap.get(x1,y1);
          c1 = lerpColor(c0,c1,.50);
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
      int z1=int(rz1);
      x1=x1+z1;
    }
    x1=0;
    y1=y1+10;
    f1=f1+1;
  }

}

void captureEvent(Capture cap) {
  cap.read();
}