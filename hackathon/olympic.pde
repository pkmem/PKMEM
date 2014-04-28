// 길환희

int i = 0;
int x;
int y;
int test = 0;

void setup() { // this is run once.

// set the background color
background(255);


// canvas size (Integers only, please.)
size(300, 300);

// smooth edges
smooth();

// limit the number of frames per second
frameRate(30);

// set the width of the line.
strokeWeight(10);


}

void draw() { // this is run repeatedly.

stroke(0, 0, 255, 100);
ellipse(50+x,50+y,50,50);

stroke(255, 255, 0, 100);
ellipse(80+x,80+y,50,50);

stroke(0, 0, 0, 100);
ellipse(110+x,50+y,50,50);

stroke(255, 0, 0, 100);
ellipse(170+x,50+y,50,50);

stroke(0, 255,0, 100);
ellipse(140+x,80+y,50,50);


if(x < 100 && y<150)
x+=2;
else if(x>90 && y < 150)
y+=2;
else if(x>0 && y>140)
x-=2;
else
y-=2;
// set the color

/*


// draw the line
line(i, 0, random(0, width), height);

// move over a pixel
if (i < width) {
	i++;
} else {
	i = 0;
}
*/
}
