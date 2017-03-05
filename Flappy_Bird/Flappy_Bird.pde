//Start with a new sketch that contains setup() and draw() methods. Ask your teacher if you don't know how to do this. The suggestions under each step should help you with your program.

int birdx = 328;
int birdy= 224;
double birdvelocity = 1;
double gravity = 0.5;
int pipex = 1400;
int pipey = 300;
int pipewidth = 200;
int speed = 6;
int rectheight = 150; 
int randomheight = (int) random(100,400);
int randomwidth = (int) random(50,300);
void setup(){
 
size(1200, 750);

  
  
}
void draw(){
  


 background(017, 221, 255);
 fill(56,254,38);
 ellipse(birdx,birdy,50,50);
  


 pipex -= speed;
 pipey = randomheight;
  fill(214,58,58);
  rect(pipex,pipey,randomwidth,height - rectheight);
  birdvelocity += gravity;
  birdy += birdvelocity;
  
if (keyPressed && key == ' '){
  
  birdvelocity = -10;
  
}
  if (pipex < -250){
    
    pipex = 1400;
rectheight = height - rectheight;
rectheight = (int) random(100,400);
  } 
  
  
  
  
}






/*
1.Make a canvas for your game.
  size(width, height)      //in setup method
  background(red, green, blue)  //in draw method

2. Draw a bird on the screen. (It can be a ball for now)
fill(red, green, blue)    //in draw method
ellipse(x, y, width, height)  //in draw method
  
3. Make the bird fall down
  //make variables for the bird's X and Y position and width and height and use them in 
// the draw method

 4. Add velocity to the bird. 
  //make a variable for the velocity of the bird in the Y direction (up and down).
  //changing this variable should change the velocity of your bird.
  double birdYVelocity = 0;

 5. Give the bird gravity. 
  //make a variable for the gravity pushing down the bird in the Y direction (up and              
//down). This should continually decrease the upward y velocity. 
double gravity = 0.5;

6. Make the bird jump/flap when the mouse is clicked.
//construct a mousePressed() method the same way setup and draw were made
//Change the bird’s yVelocity to make the bird flap  

7. Draw a pipe coming up from the ground
fill(red, green, blue)    //in draw method
rect(x, y, width, height)    //in draw method

8. Make the pipe move from right to left.
  //make a variable for the pipe X position and change it in the draw method.

9. Make the pipe teleport back to the right side of the screen once it has passed through the left. This will simulate the repeating pipes coming from the right of the screen.

10. Set the pipes y value to a new random number each time it teleports
int random = (int) random(100, 400)

11. Make the game end when the bird hits the pipe. Figure it out by yourself, or use this method:
boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
return true;
else 
return false;
}

12. Make a second pipe that comes down from the sky
fill(red, green, blue)    //in draw method
rect(x, y, width, height)    //in draw method

13. Repeat steps 8-10 for this pipe 
  //it shouldn’t look any different from before yet

14. Create a gap between the pipes
  //the x values of the pipes need to be the same value
  //make sure both pipes y values are set to the same random number
  //then subtract (pipe height + gap length) from the upper pipe’s y value

15. End the game when the bird hits the ground
  //you can make a rectangle for the ground
  //you’ll need a boolean  variable that is declared at the top of your sketch

16. Create a score and make it increase each time the bird passes through a pipe
text(text, xPosition, yPosition)

17 (Optional). Make a sound when the bird flaps.
  //drop the sound file onto your sketch

  import ddf.minim.*;       //at the very top of your sketch
  Minim minim;        //as a member variable
  AudioSample sound;      //as a member variable
  minim = new Minim (this);    //in the setup method
  sound = minim.loadSample("BD.mp3", 128);//in the setup method
  sound.trigger();        //in mouseReleased() method (when the bird flaps)
*/