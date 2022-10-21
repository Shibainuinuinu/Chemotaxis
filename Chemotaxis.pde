Cat[] meowGroup = new Cat[30];
void setup(){
  size(700,700);
  background(255);
  for(int i=0; i<meowGroup.length; i++){
    meowGroup[i] = new Cat();
  }
}
void draw(){
  background(255);
  fill(#E8B7F2);
  ellipse(mouseX, mouseY, 50, 50);
  for(int i=0; i<meowGroup.length; i++){
    meowGroup[i].move();
    meowGroup[i].show();
}
}
class Cat{
  int myX, myY, myColor;
  Cat(){
    myX = myY = 500;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void move(){
    myX = myX + (int)(Math.random()*11)-5;
    myY = myY + (int)(Math.random()*11)-5;
  }
  void show(){
    //Cat head and ears
    fill(myColor);
    noStroke();
    ellipse(myX, myY, 50,50);
    triangle(myX-5, myY-25, myX-15, myY-50, myX-20, myY-10);
    triangle(myX+5, myY-25, myX+15, myY-50, myX+20, myY-10);
    //Cat mouth lines
    stroke(0);
    fill(0);
    triangle(myX, myY+5,  myX+5, myY-2, myX-5, myY-2);
    line(myX, myY+5, myX+5, myY+10);
    line(myX, myY+5, myX-5, myY+10);
    //Whiskers
    line(myX, myY+5, myX+30, myY+5);
     line(myX, myY+5, myX-30, myY+5);
     line(myX, myY+5, myX-30, myY+7);
     line(myX, myY+5, myX+30, myY+7);
     line(myX, myY+5, myX+30, myY-3);
     line(myX, myY+5, myX-30, myY-3);
     //Cat eyes
     ellipse(myX-10, myY-12.5, 5, 5);
     ellipse(myX+10, myY-12.5, 5, 5);
     if (mouseX > myX)
       myX = myX + (int)(Math.random()*5)+3;
      if (mouseY > myY)
       myY = myY + (int)(Math.random()*5)+8;
     if (mouseX < myX)
       myX = myX + (int)(Math.random()*5)-12;
     if(mouseY < myY)
       myY = myY + (int)(Math.random()*5)-8;
   
  }
}
