int sec;
int a=8;
int b=8;
int c=8;

void setup() {
  size(600, 800);
  background(a,b,c);
  frameRate(60);
  noCursor();
  noStroke();
}

void draw(){
  sec = second();

  if(sec==5||sec==10||sec==15||sec==20||sec==25||sec==30||sec==35||sec==40||sec==45||sec==50||sec==55||sec==0){
    fill(#002536);
    color cp = get(mouseX, mouseY);
    if(cp==#080808){
      fill(#002536);
    }
    else if(cp==#002536){
      fill(#053c45);
    }
    else if(cp==#053c45){
      fill(#0c4f4c);
    }
    else if(cp==#0c4f4c){
      fill(#1c7563);
    }
    else if(cp==#1c7563){
      fill(#329673);
    }
    else{
      fill(#329673);
    }
    rect(mouseX, mouseY, 4, 4);
  }
  else{
    fill(#002536);
    color cp = get(mouseX, mouseY);
    if(cp==#080808){
      fill(#002536);
    }
    else if(cp==#002536){
      fill(#053c45);
    }
    else if(cp==#053c45){
      fill(#0c4f4c);
    }
    else if(cp==#0c4f4c){
      fill(#1c7563);
    }
    else if(cp==#1c7563){
      fill(#329673);
    }
    else{
      fill(#329673);
    }
    rect(mouseX, mouseY, 2, 2);
  }

  
}