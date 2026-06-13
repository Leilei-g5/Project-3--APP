// unit 3 project 
// Leilei Gu 

//colour pallete
color red       = #FC0000;
color orange    = #FC6E00;
color yellow    = #FFEA00; 
color green     = #40FF03; 
color blue      = #40CAFF; 
color purple    = #7C03FF; 
// variables for color selection 
color SelectedColor; 
//thickness
float sliderX; 
float thickness;
float miffySize = 40;
float miffy2Size = 140;
//imgae 
PImage Miffy; 
PImage Miffy2;
boolean MiffyOn; // true or false
boolean Miffy2On;

void setup () {
  background(255);   
  size (800, 800); 
  strokeWeight(2); 
  stroke (0); 
  // color
  SelectedColor= red;
  //slider
  sliderX= 400;
  thickness = 0;
  //stamp
  Miffy = loadImage("Miffy pic.png"); 
  MiffyOn = false;
  Miffy2 = loadImage("cartoons-miffy-flowers-pack.png");
  Miffy2On = false;
}// setup end //

void draw () { 
  // control sectionm
  fill (100); 
  noStroke(); 
  rect(0, 0, 800, 200);
  strokeWeight(2); // normal thickness
  // divider line 
  stroke(0);
  line(0, 200, 800, 200);
  //buttons
  //red
  circleButton (red, 80, 60, 50); 
  
  //orange
  circleButton (orange, 150, 60, 50);
  
  //yellow
  circleButton (yellow, 220, 60, 50);
  
  //green 
  circleButton (green, 80, 140, 50);
  
  //blue 
  circleButton (blue, 150, 140, 50);
  
  //purple 
  circleButton (purple, 220, 140, 50);
  
  //slider
  stroke(0);
  line(275, 100, 425, 100);
  fill(255);
  stroke(0);
  circle(sliderX, 100, 30);
  thickness = map(sliderX, 275, 425, 1, 15);
  strokeWeight (thickness); 
  miffySize = map(sliderX, 275, 425, 20, 100);
  miffy2Size = map(sliderX, 275, 425, 20, 100);
  
  //indicator  
  stroke(0);
  fill(SelectedColor); 
  rect (450, 40, 40, 100); 
  
  //image stamp miffy button
  noStroke();
  tactileRect(520, 30, 50, 75);
  MiffyOnOff();
  fill (255);
  strokeWeight(2);
  rect (520, 30, 50, 75);
  image (Miffy, 520, 45, 55, 55); 
  
  //image stamp miffy 2 button
  noStroke();
  tactileRect(508, 115, 110, 75);
  Miffy2OnOff();
  fill (255);
  strokeWeight(2);
  rect (508, 115, 110, 75);
  image (Miffy2, 495, 115, 140, 70);
  
  //file save button 
  strokeWeight(2); 
  stroke(0);
  rectButton(255, 635, 30, 50, 25);
  fill(0);
  text("save", 649, 47); 
  
  //file load button 
  strokeWeight(2); 
  stroke(0);
  rectButton(255, 635, 80, 50, 25);
  fill(0);
  text("load", 649, 97); 

  // new button 
  strokeWeight(2); 
  stroke(0);
  rectButton(255, 635, 130, 50, 25);
  fill(0);
  text("new", 649, 146); 
}// end of draw // 

//button function 
void circleButton (color c, int x, int y, int d) {
  tactile( x, y, d/2); 
  fill(c); 
  circle(x, y, d); 
}

void rectButton (color c, int x, int y, int w, int h) {
  tactileRect(x, y, w, h); 
  fill(c); 
  rect(x, y, w, h);
}

// tactile function
void tactile (int x, int y, int r) {
if (dist(x, y, mouseX, mouseY) < r) {
  stroke(255); 
    } else {
  stroke(0);
    }
} // end tactile

  // tactile function
void tactileRect (int x, int y, int w, int h) {
if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
  stroke(255); 
    } else {
  stroke(0);
    }
} // end tactile

// mouseReleased
void mouseReleased() {
  // red button
  if (dist(80, 60, mouseX, mouseY) < 25) {
  SelectedColor = red; 
  }
   // orange button
  if (dist(150, 60, mouseX, mouseY) < 25) {
  SelectedColor = orange; 
  }
   // yellow button
  if (dist(220, 60, mouseX, mouseY) < 25) {
  SelectedColor = yellow; 
  }
  // green button
  if (dist(80, 140, mouseX, mouseY) < 25) {
  SelectedColor = green; 
  }
  // blue button
  if (dist(150, 140, mouseX, mouseY) < 25) {
  SelectedColor = blue; 
  }
  // purple button
  if (dist(220, 140, mouseX, mouseY) < 25) {
  SelectedColor = purple; 
  }
  // slider 
  {
  controlSlider();
}
  // Miffy button 
  if (mouseX > 520 && mouseX < 570 && mouseY > 30 && mouseY < 105) {
    MiffyOn = !MiffyOn; 
    if (MiffyOn == true) {
    Miffy2On = false;
  }
  }
  
   // Miffy2 button 
  if (mouseX > 508 && mouseX < 618 && mouseY > 115 && mouseY < 190) {
    Miffy2On = !Miffy2On; 
    if (Miffy2On == true) { 
      MiffyOn = false;
  }
  }
  
  // save button 
  if (mouseX> 635 && mouseX < 685 && mouseY > 30 && mouseY < 55) { 
    selectOutput("Choose a name for your new image file", "saveImage"); 
  }
  
  //load button 
    if (mouseX> 635 && mouseX < 685 && mouseY > 80 && mouseY < 105) { 
    selectInput("Pick an image to load", "openImage"); 
  }
  
  //new button 
      if (mouseX> 635 && mouseX < 685 && mouseY > 130 && mouseY < 155) { 
      background(255);
  }
  
} // end mouseReleased //

 //slider
 void controlSlider() {
if (mouseX > 275 && mouseX < 425 && mouseY > 75 && mouseY < 125) { 
    sliderX = mouseX;
  // thickness
   thickness = map(sliderX, 275, 425, 0, 255); 
  }
} 

//save Image 
void saveImage(File f) { 
  if (f !=null) { 
    PImage canvas = get( 0, 205, width, height-200); 
    canvas.save( f.getAbsolutePath() );
  }
}

//load Image 
void openImage(File f) {
  if (f !=null) { 
    //KLUDGE 
    int n=0; 
    while (n < 100) { 
      PImage pic = loadImage(f.getPath() ); 
      image (pic, 0, 200); 
      n = n+1; 
    } 
  }
}

//slider 
void mouseDragged () {
 controlSlider(); 
  if (MiffyOn == false && Miffy2On == false) { 
  // drawing line 
    if (mouseY > 200) {
  stroke(SelectedColor);
  strokeWeight(thickness);
  line(pmouseX, pmouseY, mouseX, mouseY);
    } 
  } 
  if (MiffyOn == true) { 
    if (mouseY > 200) {
    image(Miffy, mouseX, mouseY, miffySize, miffySize);
    }
  }
  if (Miffy2On == true) { 
  // drawing line 
    if (mouseY > 200) {
    image(Miffy2, mouseX, mouseY, miffy2Size, miffy2Size);
    } 
 // } else { 
    // Miffy drawing
   // if(mouseY >200) {
   // 
 // }
  }
  }
  
  //Miffy button
void MiffyOnOff () {
  if (MiffyOn == true) { 
    stroke (255, 0, 0); 
    strokeWeight (5); 
  } else { 
    stroke(0); 
    strokeWeight (1); 
  }
}
  void Miffy2OnOff () {
  if (Miffy2On == true) { 
    stroke (255, 0, 0); 
    strokeWeight (5); 
  } else { 
    stroke(0); 
    strokeWeight (1); 
  }
}
