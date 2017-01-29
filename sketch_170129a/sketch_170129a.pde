int width = 400;
 int height = 400;

int frogx = width/2;
 int frogy = height-20;
void setup(){
 
  size(400, 400);
  
  
  
}
  
void draw(){

  background(21,21,21);
  fill(000,221,051);
  ellipse(frogx,frogy,30,30);
  
  car a = new car(random (400),random (400),random(10),random (10));
  Car.display();
  
}

  
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP && frogy >= 30)
      {
      frogy -= 20;
      
      }
      else if(keyCode == DOWN && frogy <= height - 30)
      {
      frogy += 20;
      }
      else if(keyCode == RIGHT && frogx <= width - 30)
      {
      frogx += 20;
      }
      else if(keyCode == LEFT && frogx >= 30)
      {
       frogx -= 20;
      }
   }
}

class car{
  
  int x;
  int y;
  int size;
  int speed;

 car(int x, int y, int size, int speed){
   
   this.x = x;
   this.y = y;
   this.size = size;
   this.speed = speed;
 }
  void display() 
  {
    fill(0,255,0);
    rect( x, y,  size, 50);
  }
  

  
  
}


     
  
  
  
  
  
  
  