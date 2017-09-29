Bacteria[] organisms = new Bacteria[100];
Pacman pacman = new Pacman(250, 250);
float PIE = 3.1415926535897;
 void setup()   
 {     
   size(500, 500);
   for(int i = 0; i < 1; i++) {
     organisms[i] = new Bacteria(100, 100);
   }
 }   
 void draw()   
 {    
  background(0);
  for(int i = 0; i < 1; i++) {
    organisms[i].show();
    organisms[i].move();
    pacman = new Pacman(mouseX, mouseY);
    pacman.show();
  }
 }  
 class Bacteria    
 {     
   int myX, myY;
   color bacteriaColor;
   Bacteria(int x, int y) {
     myX = x;
     myY = y;
     bacteriaColor = color(225, 0, 0);
   }
   void move() {
     if(myX > pacman.myX) {
       myX += (int)(Math.random() * 3) - 4;
     } else {
       myX += (int)(Math.random() * 8) - 2;
     }
     if(myY > pacman.myY) {
       myY += (int)(Math.random() * 3) - 4;
     } else {
       myY += (int)(Math.random() * 8) - 2;
     }
   }
   void show() {
      fill(bacteriaColor);
      //body
      arc(myX - 2, myY, 30, 40, PIE / 4 - 4.1, PIE / 4 - .8);
      //feet
      ellipse(myX + 8, myY + 1, 10, 10);
      ellipse(myX - 2, myY + 1, 10, 10);
      ellipse(myX - 12, myY + 1, 10, 10);
      //eyes
      fill(255);
      ellipse(myX - 7, myY - 8, 7, 9);
      ellipse(myX + 3, myY - 8, 7, 9);
      //iris
      fill(0, 0, 200);
      ellipse(myX - 5, myY - 9, 3, 3);
      ellipse(myX + 5, myY - 9, 3, 3);
   }
 }
 
 class Pacman {
   int myX, myY;
   color pacmanColor;
   Pacman(int x, int y) {
     myX = x;
     myY = y;
     pacmanColor = color(255, 248, 27);
   }
   void show() {
     noStroke();
     fill(pacmanColor);
     arc(myX, myY, 30, 30, PIE / 4 - 6.4, PIE / 2 - 2.1);
   }
 }