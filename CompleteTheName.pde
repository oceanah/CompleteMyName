//Name: Oceana Huynh
//Purpose: draws the name oceana using mouse and key methods

// variables
int draggedX = 0;
int draggedY = 0;
boolean isDragged = false;
int nY = 200;
boolean showO = false;

void setup(){
  size(1200, 800);
}

// letter0(int, int) -> void
// purpose: takes in two ints and draws the letter o at int x and int y 
void letterO(int x, int y){
  noFill();
  stroke(0);
  strokeWeight(5);
  circle(x, y, 160);
}

// keyReleased() -> void
// purpose: sets showO to true 
void keyReleased(){
  showO = true;
}

// releaseO() -> void
// purpose: draws the letter o when showO is true
void releaseO(){
  if (showO){
    letterO(125, height/2);
  }
}

// letterC(int, int) -> void
// purpose: takes in two ints and draws the letter c at int x and int y
void letterC(int x, int y){
  stroke(0);
  strokeWeight(5);
  noFill();
  arc(x, y, 160, 160, PI/6, 11*PI/6);
}

// letterE(int, int) -> void
// purpose: takes in two ints and draws the letter e at int x and int y 
void letterE (int x, int y) {
  noFill();
  stroke(0);
  strokeWeight(5);
  arc(x, y, 160, 160, PI/6, TWO_PI);
  line(x-80, y, x+80, y);
}

// letterA(int, int) -> void
// purpose: takes in two ints draws the letter a at int x and int y
void letterA (int x, int y) {
  noFill();
  stroke(0);
  strokeWeight(5);
  arc(x, y, 160, 160, PI/6, 11*PI/6); 
  line(x+70, y-50, x+70, y+75);
}

// letterN(int, int) -> void
// purpose: takes in two ints and draws the letter n at int x and int y
void letterN (int x, int y) {
  noFill();
  stroke(0);
  strokeWeight(5);
  arc(x, y, 160, 160, 7*PI/6, 11*PI/6);
  line(x-70, y-50, x-70, y+75);
  line(x+70, y-40, x+70, y+75);
}

// mouseDragged() -> void
// purpose: sets isDragged to true and updates the position of draggedA
//          and draggedY to the position of the mouse
void mouseDragged(){
  isDragged = true;
  draggedX = mouseX;
  draggedY = mouseY;
  }
  
// secondA() -> void
// purpose: a new letter a will be drawn at the position of the mouse
void secondA(){
  if (isDragged) {
    letterA(draggedX, draggedY);
  }
}

// colorBackground() -> void
// purpose: creates a gradient for the background
void colorBackground(){
  int j = 0;
  //outer loop creates rectangles going down and 
  //change colors by changing the blue values
  while (j < height){
    //inner loop creates rectangles going right 
    //and change colors by changing the red values
    for(int i = 0; i < width; i += 50){
      noStroke();
      fill(i/8, 209, 255, 50);
      rect(i, 0, 50, height);
    }
    fill(255, 240, j/8, 50);
    rect(0, j, width, 50);
    j += 50;
  }
}

// moveN() -> void
// purpose: draws the letter n and moves it downwards
void moveN(){
  if(keyPressed && keyCode == DOWN && nY < 400){
     nY += 10;
  }
  letterN(885, nY);
}

void draw(){  
  //background gradient
  colorBackground();
  
  //draws letters o
  releaseO();
  
  //draws letter c
  letterC(315, height/2);
  
  //draws letter e
  letterE(505, height/2);
  
  //draws letter a
  letterA(695, height/2);
  
  //draws letter n
  moveN();
  
  //draws the second letter a
  secondA();  
}
