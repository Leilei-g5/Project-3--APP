// Checkpoint 3 
// Leilei Gu 
// April 2nd 

//Pallette
color red = #FF4343; 

float sliderX; 

void setup() {
  size (800, 600); 
  strokeWeight(5); 
  stroke(red); 
  fill(red); 
  sliderX= 400; 
}

void draw(){ 
  background(0); 
  
  line(100, 300, 700, 300); 
  circle(sliderX, 300, 50); 
} 

void mouseReleased() { 
  if (mouseX > 100 && mouseX < 700 && mouseY > 275 && mouseY < 325) { 
    sliderX = mouseX;
  }
} 
