// 신기영
//게임이름 : 우적우적
// Ver 0.02
// 감점이 되는 동그라미가 추가 되었습니다.

// Global variables
float radius = 50.0;
int X, Y;
int nX, nY;
int delay = 16;
//int isMeet = 0;
isMeet = [];
cnt = 0;
// Setup the Processing Canvas
void setup(){
size( 400, 400 );
strokeWeight( 10 );
frameRate( 15 );
X = width / 2;
Y = height / 2;
nX = X;
nY = Y;

}

void calc(){

if(X < 40 && X > 20 && Y > 30 && Y < 50){

isMeet[0] = 1;
cnt++;
}

if(X < 190 && X > 170 && Y > 290 && Y < 310){
isMeet[1] = 1;
cnt++;
}
if(X < 80 && X > 60 && Y > 170 && Y < 190){
isMeet[2] = 1;
cnt++;
}
if(X < 310 && X > 290 && Y > 90 && Y < 110){
isMeet[3] = 1;
cnt++;
}
if(X < 360 && X > 340 && Y > 290 && Y < 310){
isMeet[4] = 1;
cnt++;
}

if(X < 210 && X > 190 && Y > 370 && Y < 390){
isMeet[5] = 1;
cnt--;
}

}

void make(){
fill( 200, 121, 184 );
if(!isMeet[0]){
ellipse( 30, 40, 25, 25 );
}

if(!isMeet[1]){
ellipse( 180, 300, 25, 25 );
}

if(!isMeet[2]){
ellipse( 70, 180, 25, 25 );
}

if(!isMeet[3]){
ellipse( 300, 100, 25, 25 );
}

if(!isMeet[4]){
ellipse( 350, 300, 25, 25 );
}

fill(80, 200, 184 );
if(!isMeet[5]){
ellipse( 200, 380, 25, 25 );
}


}


// Main draw loop
void draw(){


radius = radius + sin( frameCount / 4 );

// Track circle to new destination
X+=(nX-X)/delay;
Y+=(nY-Y)/delay;

// Fill canvas grey
background( 100 );

// Set fill-color to blue
fill( 0, 121, 184 );

// Set stroke-color white
stroke(255);

// Draw circle

ellipse( X, Y, radius, radius );
make();
calc();


text(cnt, 380, 50);

if(isMeet[0] == 1 &&
isMeet[1] == 1 &&
isMeet[2] == 1 &&
isMeet[3] == 1 &&
isMeet[4] == 1){

text("끗", 200, 200);

}
}

// Set circle's next destination
void mouseMoved(){
nX = mouseX;
nY = mouseY;


}
