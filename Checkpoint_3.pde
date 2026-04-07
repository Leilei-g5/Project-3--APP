// Checkpoint 3 
// Leilei Gu 
// April 2nd 

//Pallette
color black = #0F0F0F; 

float sliderY; 
float circleX; 

void setup() {
  size (600, 600); 
  strokeWeight(5); 
  stroke(black); 
  fill(black); 
  sliderY= 100; 
  circleX= 0;
}

void draw(){ 
  background(255); 
  circleX= map (sliderY, 100, 500, 0, 300) ;
  line(100, 100, 100, 500); 
  circle(100, sliderY, 50); 
  noFill(); 
  circle(400, 300, circleX); 
  fill(black); 
} 

void mouseDragged() { 
  controlSlider();
} 

void mouseReleased() { 
  controlSlider();
} 


void controlSlider() { 
if (mouseX > 100 && mouseX < 500 && mouseY > 100 && mouseY < 500) { 
    sliderY = mouseY;
  }
}
