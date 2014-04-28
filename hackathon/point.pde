// 오세빈
// Pressing Control-R will render this sketch.

int i = 0;
int a = 0;
int b = 0;
X = [];
Y = [];

int sizeX = 10;
int sizeY = 10;
int count = 0;
void setup() { // this is run once.

// set the background color
background(0);

// canvas size (Integers only, please.)
size(1000, 1000);

// smooth edges
smooth();

// limit the number of frames per second
frameRate(15);

// set the width of the line.
strokeWeight(70);
for(int i = 0; i < 10; i ++){
X[i] = {(int)random(width)};
Y[i] = {(int)random(height)};
}
}

void draw() { // this is run repeatedly.

background(0);
for(int i = 0; i < 10; i++){
ellipse(X[i], Y[i], 10, 10);
}

stroke(random(50), random(255), random(255), 50);

ellipse(mouseX, mouseY, sizeX, sizeY);

if(mouseX == X[count] && mouseY == Y[count]){
sizeX += 10;
sizeY += 10;
count++;
}



textSize(random(50));
text(X[count] + " " + Y[count], random(width), random(height));
}
