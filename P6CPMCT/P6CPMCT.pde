PFont font;
PImage splash;

void setup() {
	size(640, 360);
	background(#040000);
	frameRate(30);
	font = loadFont("Verdana-Bold-10.vlw");
	textFont(font);
	splash = loadImage("images/Splash.png");
	image(splash,0,0);
}

void draw() {
}

int s=0;

String about = "Welcome to Cobra. Cobra is a Private Military Company that will guarantee your contracts are completed, despite any and all consequences or costs. Cobra accepts many forms of contracts, including but not limited to: Compound Security, Hostage Rescue, Convoy Escort, Patrols, Raids, Civilian Suppression, Coup Denial, Counter Insurgency, Drug Raiding, Package Protection, Transport, and Anti-Gang Operations.";

String about2 = "Our contractors are hired from around the world, scouted by our top veterans to the get the optimum warrior to fight for you. We also have the best access to all of the latest weapons and gadgets showcased to the world from SOFEX from almost every country across the world. If our warrior has a need, our warrior is going to get it.";

String about3 = "What does this mean for you? Well it means that when you give us that contract, you can rest easy, knowing that we are going to get into the operative area, and fuck up every single little piece of shit who dares stand in our way. But hey, it doesn't have to be messy either, our contractors can also be trained in some of the highest level operator moves that would make DEVGRU look like weekend warriors.";

String about4 = "Prices vary greatly -- Contact us NOW!";

String about5 = "Overseer001@Cobra.pmc";

String about6 = "000-317-5551";

String about7 = "Arkady Vistok";

String about8 = "-------------------------------------------------------------------------------------------------------------------------------";

String about9 = "CUTTRANS//ENDTRANS";

String about10 = ".....#35....6adF426///0";

String latin = "semper cruentus";

String end = "010END//!";

int display=1;

void mouseClicked() {
	switch (display){
		case 0:
			image(splash,0,0);
			break;
		case 1:
			background(#040000);
			fill(#d00e04);
			text(about,3,3,637,357);
			text(about2,3,63,637,357);
			text(about3,3,113,637,357);
			text(about4,3,173,637,357);
			text(about5,480,253,637,357);
			text(about6,480,263,637,357);
			text(about7,480,233,637,357);
			text(about8,3,283,637,357);
			text(about9,3,293,637,357);
			text(about10,3,303,637,357);
			break;
		case 2:
			background(#d00e04);
			fill(#700600);
			text(latin,280,180);
			break;
		case 3:
			background(#010101);
			fill(#7b6f3f);
			text(end,300,180);
			break;
	}
		display++;
	if(display==4) {
		display=0;
	}
}