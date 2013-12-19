//setup
void setup() {
  size(600, 800);
  background(#111111);
  frameRate(30);
  noCursor();
  noStroke();
}

int x=0;
float x1=random(0,599);
float x2=random(0,599);
float x3=random(0,599);
float y1=0;
int wat=0;
int p=0;

void draw() {
  background(#111111);

  //cursor
  fill(#ff6100);
  rect(mouseX-2,795,5,5);

  //projectiles
  println(p);
  if(x<30){
    x++;
  }
  else if(x==30){
      fill(#00bff3);
      while(wat<3){
        rect(x1,y1,20,100);
        rect(x2,y1,20,100);
        rect(x3,y1,20,100);
        y1+=30;
        wat++;
      }
      wat=0;
      y1+=5;
    if(y1>810) {
      y1=0;
      place();
    }
  }
  else{
    x=0;
  }

  // point system
  int s=0;

  while(s<30) {
    s++;
    if(s==30) {
      p++;
    }
  }
  s=0;
  
  color cp = get(mouseX-2, 790);
  if(cp==#00bff3) {
    p=0;
  }
}


void place() {
  x1=random(0,599);
  x2=random(0,599);
  x3=random(0,599);
}