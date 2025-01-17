//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here


var leftA = 123;
var leftB = 100;
var leftC = 130;
var leftD = 177;

var rightA = 281;
var rightB = 96; 
var rightC = 276;
var rightD = 178;

var ladyX = 80; 

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
   if(mousePressed){
    showXYPositions();
    
  }
  
  //🎯Animation Code Goes Here


//bow 
fill(198, 46, 46)
triangle (198,125,leftA,leftB,leftC,leftD)
triangle (213,128,rightA,rightB,rightC,rightD)
ellipse (205,129,20,20)


//right flap 
line (217,135,258,195)
line (258,195,259,222)
line(259,222,237,270)
line(237,270,224,210)
line (208,151,224,210)
line (208,151,215,133)

//left flap
line (199,134,204,192)
line (204,192,190,270)
line (190,270,162,228)
line (162,228,165,186)
line (165,186,199, 134)

//ladybug
fill(198, 46, 46)
ellipse(ladyX,295,35,25)




leftA -=3
leftB -=1
leftC -=3
leftD +=1

rightA +=3
rightB -=1
rightC +=3
rightD +=1

ladyX +=2


}
showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
