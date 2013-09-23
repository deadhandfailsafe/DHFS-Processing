// Setup.
PImage img;
color c1;
void setup(){
  size(600,800);
  background(100, 200, 255);
  img = loadImage("face.jpg");
  img.resize(601,801);
}

// Generating the image.
void draw(){
  tri1();
  tri2();
}

// This loop grabs the average color of the image in a 20x20 upper left pointing triangular area and places a similar triangle in that area with that color.
void tri1(){
  int x1=0;
  int x2=0;
  int y1=0;
  int f1=0;
  int if1=0;
  while(f1<40)
  {
    for(int f2=0;f2<30;f2++)
    {
      for(int f3=0;f3<20;f3++)
      {
        c1 = img.get(x1,y1);
        while(if1<20)
        {
          color c0 = img.get(x1,y1);
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
      triangle(x1,y1,x1+20,y1,x1,y1+20);
      x1=x1+20;
    }
    x1=0;
    y1=y1+20;
    f1=f1+1;
  }
}

// Same as above except does the lower right pointer
void tri2(){
  int x1=20;
  int x2=0;
  int y1=20;
  int f1=0;
  int if1=0;
  while(f1<40)
  {
    for(int f2=0;f2<30;f2++)
    {
      for(int f3=0;f3<20;f3++)
      {
        c1 = img.get(x1,y1);
        while(if1<20)
        {
          color c0 = img.get(x1,y1);
          c1 = lerpColor(c0,c1,.50);
          x1--;
          x2++;
          if1++;
        }
        x1+=x2;
        x2=0;
        if1=0;
        y1--;
        if1+=f3;
      }
      y1+=20;
      fill(c1);
      noStroke();
      triangle(x1,y1,x1,y1-20,x1-20,y1);
      x1=x1+20;
    }
    x1=20;
    y1=y1+20;
    f1=f1+1;
  }
}

