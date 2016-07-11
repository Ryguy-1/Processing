PImage rainbow;
PImage unicorn;

void setup() {
  // 1. Find an image of a rainbow, save it, and drop it onto this sketch.
  rainbow = loadImage("rainbow.png");  // 2. Change this to match your file name. 
  size(rainbow.width, rainbow.height);
  // 3. Set the rainbow as the background. Behold the rainbow!
background(rainbow);

  // 4. Find an image of a unicorn, save it, and drop it onto this sketch.  
  unicorn = loadImage("unicorn.png"); // 5. Change this to match your file name.
}

void draw() {

 if (mousePressed){
    background(rainbow);
   image(unicorn,mouseX,mouseY);
  
 }

  // 8. You may want to make your unicorn transparent. See these instructions: bit.ly/pretty-unicorn
  // 9. When the mouse is pressed, reload the rainbow background
  
}

