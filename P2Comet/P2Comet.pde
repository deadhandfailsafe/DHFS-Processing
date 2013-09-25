// Setup
float xp=random(0,800);
float yp=random(0,600);
int xx=600;
int yy=800;
int st=0;
int fa=255;

void setup() {
  size(600, 800);
  background(#111111);
  frameRate(30);
  noCursor();
}

void draw() {
	colorMode(HSB);
  background(0,mouseY-250,20);

	// Comet Tail
	int tx=mouseX-10;
	int ty=mouseY-10;
	int ts=20;
	int ctl=0;
	while(ctl<15){
		fill(#00AAFF,fa);
		rect(tx,ty,ts,ts);
		tx-=random(1,25);
		ty-=random(1,25);
		fa-=17;
		ts-=1;
		ctl++;
	}
	fa=255;
	ctl=0;

	// Comet
	noStroke();
	int x=50;
	colorMode(HSB);
	fill(33,mouseY-150,mouseY-150);
	ellipse(mouseX, mouseY, x, x);

	// Stars
	colorMode(RGB);
	fill(#CCCCCC);
	while(st<7)
	{
		rect(xx,yp,5,5);
		rect(xp,yy,5,5);
		xp-=3;
		yp-=3;
		xx-=3;
		yy-=3;
		st++;
	}
	st=0;
	if(xp<0)
	{
		xp=random(0,800);
	}
	if(yp<0)
	{
		yp=random(0,600);
	}
	if(xx<0)
	{
		xx=600;
	}
	if(yy<0)
	{
		yy=800;
	}
}

void mousePressed() {
  background(255);
}

void mouseReleased() {
  background(255);
}