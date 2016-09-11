import processing.sound.*;
SoundFile sound;


void setup(){
  size(800,800);
  fill(255,136,68);
  ellipse(200,200,400,400);
  fill(255,30,30);
  ellipse(200,200,300,300);
  fill(255,238,13);
  ellipse(200,200,250,250);
  sound = new SoundFile (this, "Mii Channel Music.wav");
}

void draw(){
 PImage bacon = loadImage ("bacon.gif");
 bacon.resize(30,30);
  image(bacon, 150,150);
  image(bacon, 100,100);
  image(bacon, 236, 233);
  image(bacon, 300, 230);
  image(bacon, 166, 272);
  if (mousePressed){
    image(bacon, mouseX,mouseY);
 sound.play();
  }
 
}