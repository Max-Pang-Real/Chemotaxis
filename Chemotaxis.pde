//declare bacteria variables here  
Zombie [] horde;

Man john;
void setup(){
  size(800,800);
  john = new Man();
  horde = new Zombie[15];
  for(int i = 0; i < horde.length; i++){
   horde[i] = new Zombie();
  }
}  
void draw(){    
  background(192);
  john.move();
  john.show();
  for(int i = 0; i < horde.length; i++){
    horde[i].move(); 
    horde[i].show();
  }
}
class Zombie {
  int x, y;
  Zombie(){
   x = 0;
   y = 0;
  }
  void move(){
   if(john.x > x){
     x += (int)(Math.random()*5)-1;
   } else {
     x += (int)(Math.random()*5)-3;
   } if(john.y > y){
     y += (int)(Math.random()*5)-1;
   } else {
    y += (int)(Math.random()*5)-3; 
   }
  }
  void show(){
   fill(70, 120, 70);
   ellipse(x,y,40,40);
  }
}

class Man{
 int x, y;
 Man(){
  x = width/2;
  y = height/2;
 }
void move(){
  if((keyPressed) && (key == 'a')){
    x-=2;
  } else if((keyPressed) && (key == 'd')){
    x+=2;
  } else if ((keyPressed) && (key == 's')){
    y+=2;
  } else if((keyPressed) && (key == 'w')){
    y-=2;
 }
}
 void show(){
  fill(255,230,145);
  ellipse(x,y,50,50);
 }
}  
