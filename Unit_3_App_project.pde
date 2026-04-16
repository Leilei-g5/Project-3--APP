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
//imgae 
PImage Miffy; 
boolean MiffyOn; // true or false

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
  MiffyOn= false;
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
  tactile (80, 60, 25); 
  fill (red); 
  circle(80, 60, 50);
  
  //orange
  tactile (150, 60, 25); 
  fill(orange); 
  circle(150, 60, 50); 
  
  //yellow
  tactile (220, 60, 25); 
  fill(yellow); 
  circle(220, 60, 50); 
  
  //green 
  tactile (80, 140, 25); 
  fill(green); 
  circle (80, 140, 50);
  
  //blue 
  tactile (150, 140, 25); 
  fill(blue); 
  circle (150, 140, 50);
  
  //purple 
  tactile (220, 140, 25); 
  fill(purple); 
  circle (220, 140, 50);
  
  //slider
  stroke(0);
  line(275, 100, 425, 100);
  fill(255);
  stroke(0);
  circle(sliderX, 100, 30);
  thickness = map(sliderX, 275, 425, 1, 15);
  strokeWeight (thickness); 
  
  //indicator  
  stroke(0);
  fill(SelectedColor); 
  rect (450, 40, 40, 100); 
  
  //image stamp miffy button
  tactile(0, 0, 100, 100);
  MiffyOnOff();
  fill (255);
  strokeWeight(2);
  rect (520, 30, 90, 125);
  image (Miffy, 520, 45, 100, 100); 
  
  //file save button 
  strokeWeight(2); 
  stroke(0); 
  fill(255); 
  tactileRect(635, 30, 50, 25); 
  rect( 635, 30, 50, 25);
  fill(0);
  text("save", 649, 47); 
  
  //file load button 
  strokeWeight(2); 
  stroke(0); 
  fill(255); 
  tactileRect(635, 80, 50, 25); 
  rect(635, 80, 50, 25);
  fill(0);
  text("load", 649, 97); 
  
  // new button 
  strokeWeight(2); 
  stroke(0); 
  fill(255); 
  tactileRect(635, 130, 50, 25); 
  rect(635, 130, 50, 25);
  fill(0);
  text("new", 649, 146); 
  
  


}// end of draw // 


// tactile function
void tactile (int x, int y, int r) {
if (dist(x, y, mouseX, mouseY) < r) {
  stroke(255); 
    } else {
  stroke(0);
    }
} // end tactile

  // miffy button 
void tactile( int x, int y, int w, int h) { 
    if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) { 
      fill (255, 255, 0); 
    } else { 
      fill (255); 
    }
  }
  
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
  if (mouseX > 520 && mouseX < 620 && mouseY > 40 && mouseY < 140) {
    MiffyOn = !MiffyOn ;
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
    PImage canvas = get( 71, 1, width-71, height-1); 
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
      image (pic, 0, 0); 
      n = n+1; 
    } 
  }
}

//slider 
void mouseDragged () {
 controlSlider(); 
  if (MiffyOn == false) { 
  // drawing line 
    if (mouseY > 200) {
  stroke(SelectedColor);
  strokeWeight(thickness);
  line(pmouseX, pmouseY, mouseX, mouseY);
    } 
  } else { 
    // Miffy drawing
    if(mouseY >200) {
    image(Miffy, mouseX, mouseY, 40, 40);
  }
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
