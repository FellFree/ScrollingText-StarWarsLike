String txt;
float y = 0;
PFont font;

void setup() {
  // Window or fullscreen
  size(1200, 600, P3D);
  //fullScreen(P3D);
  
  // Starting point of textBox
  y = height/2;
  
  // Load and join text from file
  String[] lines = loadStrings("space.txt");
  txt = join(lines, "\n");
  
  //Loading font
  font = createFont("Starjedi.ttf", width*0.04, true);
  textFont(font);
}

void draw() {
  //For width of textBox
  float w = -width * 0.6;
  
  // Black background
  background(0);
  // Setting the text properties
  fill(238, 213, 75);
  textAlign(CENTER);
  // Center and rotate on X axis
  translate(width/2, height/2);
  rotateX(PI/4);
  // Display textBox
  text(txt, -w/2, y, w, height*10);
  
  //Move up textBox 
  y--;
}
