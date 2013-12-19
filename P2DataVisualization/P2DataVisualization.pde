String[] gamelog;
int counter = 1509;

String delimiters = " ,.?!;:[]()*-®+ -";

void setup() 
{  
  size(600, 50);
  background(120);
  
  String[] rawtext = loadStrings("gamelog.txt");
  String everything = join(rawtext, "" );
  gamelog = splitTokens(everything,delimiters);
  frameRate(5);
}

void draw() {
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
