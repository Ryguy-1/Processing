float angle=1;
import ddf.minim.*;  
Minim minim;  
AudioPlayer song;  
PImage pictureOfRecord; 

void setup(){
     minim = new Minim(this);      
    pictureOfRecord= loadImage("record.jpg");   //in setup method  
  song = minim.loadFile("Wii.mp3");
size (1200, 1200);
  
  
}
void draw(){
  rotateImage(pictureOfRecord,angle );    
  image(pictureOfRecord, 0, 0);

if (mousePressed) {
  song.play();
  angle=angle*1.5;
  println(angle);
}
 

  
}
 void rotateImage(PImage image, float amountToRotate) {
      translate(width/2, height/2);
      rotate(amountToRotate*TWO_PI/360);                              
      translate(-image.width/2, -image.height/2);
 }