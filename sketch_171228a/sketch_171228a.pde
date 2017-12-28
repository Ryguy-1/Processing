int baseY = 482;
int baseX = 40;
int blocks = 14;
void setup(){
  
  size(500,500);
  pyramid();
}

  void pyramid(){
  for(int i = 0; i<blocks; i++ ){
    
    rect(baseX,baseY, 30, 15);
    baseX+=30;
    
  }
  blocks-=1;
  for(int i = 0; i <blocks;i++){
    
    rect(baseX,baseY, 30, 15);
    bas
    
  }
  }