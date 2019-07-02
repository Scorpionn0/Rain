drop[] damla = new drop[500];

 


void setup(){
size(400,400); // 500,400 yada displayWidth,displayHeight(tam ekran) 


 for(int i =0; i < damla.length; i++){
damla[i] = new drop();
}

}

void draw(){
background(#FFBFF7);
 for(int i =0;i < damla.length;i++){

  damla[i].fall();
  damla[i].show();
}
}
