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
float sliderY; 
float circleX; 

void setup () {
  background(255);   
  size (800, 800); 
  strokeWeight(2); 
  stroke (255); 
  line(0, 200, 800, 200);
  SelectedColor= red;
}// setup end //

void draw () { 
  background(255); 
  
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
  
  //indicator 
  stroke(0);
  fill(SelectedColor); 
  rect (400, 50, 40, 100); 
  
}// end of draw // 


// tactile function
void tactile (int x, int y, int r) {
if (dist(x, y, mouseX, mouseY) < r) {
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
} // end mouseReleased //
