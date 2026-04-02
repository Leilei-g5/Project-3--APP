// checkpoint 2 unit 3 
// Leilei Gu 
// April 1st 

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
  tactile (600, 100, 100, 150); 
  fill (yellow); 
  rect(600, 100, 100, 150);
  
  //orange
  tactile (600, 300, 100, 150); 
  fill(orange); 
  rect(600, 300, 100, 150); 
  
  //pink
  tactile (600, 500, 100, 150); 
  fill(pink); 
  rect(600, 500, 100, 150); 
  
  //indicator 
  stroke(darkercream);
  fill(SelectedColor); 
  square (100, 150, 400); 
} // end of draw // 



// tactile function
void tactile (int x, int y, int w, int h) {
if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
  stroke(white); 
} else {
  stroke(darkercream);
}
} // end tactile


// mouseReleased
void mouseReleased() {
  // yellow button
  if (mouseX > 600 && mouseX < 700 && mouseY > 100 && mouseY < 250)  {
 SelectedColor = yellow; 
}
// orange button
  if (mouseX > 600 && mouseX < 700 && mouseY > 300 && mouseY < 450)  {
  SelectedColor = orange; 
}
   // pink button
   if (mouseX > 600 && mouseX < 700 && mouseY > 500 && mouseY < 650)  {
   SelectedColor = pink; 
}
} // end mouseReleased //



 

  
