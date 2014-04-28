// 배기현
int x, y;
x = 150;
y = 150;
void setup() { // this is run once.
size(300, 300, P3D);

}

void draw() { // this is run repeatedly.
background(200);
stroke(255, 50);
translate(x, y, 0);
rotateX(mouseY * 0.05);
rotateY(mouseX * 0.05);
fill(mouseX * 3, 20, 160);
fill(mouseY * 1, 20, 160);
//sphereDetail(mouseX / 4);
sphere(80);
font = loadFont("FFScala.ttf");

textFont(font);

fill(0, 102, 153);

text("Jung Woo Jin", 30, 90,75,75);

fill(0, 102, 153, 51);

text("PKMEM", 30, 120);
}

void mousePressed() {

x+=10;
y+=10;

if(x>200 || y>200)
{
x=100;
y=100;
}

redraw();

}
