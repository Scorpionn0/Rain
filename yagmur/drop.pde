class drop{

  float x = random(width);
  float y = random(-500,-50); // -200,-100
  float z = random(0,15);
  float len = map(z, 0, 20, 10, 20);
  float yspeed = map(z, 0, 20, 1, 20);
  
  void fall(){
  y = y + yspeed;
  float grav = map(z,0,20,0,0.2);
  yspeed = yspeed + grav;
  
 
  if(y > height){
  y = random(-200,-100);
  yspeed =  map(z, 0, 20, 4, 10);
  }
   if(keyCode == UP){

 yspeed = map(z, 0, 20, 1, 50); // "50" yukarı tuşuna basıldığında yağmurun düşme hızı (hızlanma)
}
    if(keyCode == DOWN){
 yspeed = map(z, 0, 20, 1, 5); // "5" aşağı tuşuna basıldığında yağmurun düşme hızı (yavaşlama)
yspeed--;
    }
  }
  
 

  
  void show(){
  
  float kalinlik =  map(z,0,20,1,2);  
  strokeWeight(kalinlik); // yağmur damlalarının kalınlığı
  stroke(#B100FF);
  line(x,y,x,y+10);
  }

}
