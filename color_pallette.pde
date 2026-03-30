// Leilei Gu 
// March 3rd 
// Checkpoint for Unit 3

// pallette of colors
color cream         =  #F2ECDD;
color darkercream   =  #EFE6D5; 
color yellow        =  #F7DD9C; 
color orange        =  #F7D19C; 
color pink          =  #F7AB9c; 

void setup () { 
  size (800, 600); 
  strokeWeight(5); 
  stroke (darkercream); 
} 

void draw () { 
  background(cream); 
  
  //buttons
  fill (yellow); 
  circle( 100, 100, 100); 
  
  fill(orange); 
  circle(100, 500, 100); 
  
  fill(pink); 
  circle( 100, 500, 100); 
  
  //indicator 
  square (300, 100, 400); 
}
