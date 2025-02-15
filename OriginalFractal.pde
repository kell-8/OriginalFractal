public void setup() {
  size(700, 700);
  background(0);
  rectMode(CENTER);
}

public void draw() {
  myFractal(350, 350, 300);
}

public void myFractal(int x, int y, int size) {
  if (size < 20) {
    fill(x-120, y-200, 255-(int)(Math.random()*50));
    rect(x, y, size, size);
    quad(x, y-10, x+30, y-20, x+30, y-30, x+10, y-25);
    quad(x, y-10, x-30, y-20, x-30, y-30, x-10, y-25);
    quad(x, y+10, x-10, y+30, x, y+50, x+10, y+30);
  } else {
    myFractal(x-size/2, y, size/2);
    myFractal(x+size/2, y, size/2);
    myFractal(x, y-size/2, size/2);
    myFractal(x, y+size/2, size/2);
  }
}
