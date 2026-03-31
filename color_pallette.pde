// Leilei Gu 
// March 3rd 
// Checkpoint for Unit 3

// pallette of colors
color cream         =  #F2ECDD;
color darkercream   =  #F2DDC4; 
color yellow        =  #FBE8BE; 
color orange        =  #F7D19C; 
color pink          =  #F7AB9C; 
color white         =  #FFFFFF;
//variables for color selection 
color SelectedColor; 

void setup () { 
  size (800, 800); 
  strokeWeight(5); 
  stroke (darkercream); 
  SelectedColor=pink;
} // setup end //

void draw () { 
  background(cream); 
  
  //buttons
  //yellow
    if (dist(200, 600, mouseX, mouseY) < 50) {
  stroke(white); 
    } else {
  stroke(darkercream);
    }
  fill (yellow); 
  circle(200, 600, 100); 
  //orange
  if (dist(400, 600, mouseX, mouseY) < 50) {
  stroke(white); 
    } else {
  stroke(darkercream);
    } 
  fill(orange); 
  circle(400, 600, 100); 
  //pink
  if (dist(600, 600, mouseX, mouseY) < 50) {
  stroke(white); 
    } else {
  stroke(darkercream);
    }
  fill(pink); 
  circle(600, 600, 100); 
  
  //indicator 
  stroke(darkercream);
  fill(SelectedColor); 
  square (200, 100, 400); 
} // end of draw // 


void tactile (int x, int y, int r) {
if (dist(x, y, mouseX, mouseY) < r) {
  stroke(white); 
    } else {
  stroke(darkercream);
    }
}



void mouseReleased() {
  // yellow button
  if (dist(200, 600, mouseX, mouseY) < 50) {
  SelectedColor = yellow; 
  }
   // orange button
  if (dist(400, 600, mouseX, mouseY) < 50) {
  SelectedColor = orange; 
  }
   // pink button
  if (dist(600, 600, mouseX, mouseY) < 50) {
  SelectedColor = pink; 
  }
} // end mouseReleased //
