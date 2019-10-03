float xStartposition = 40, yStartposition = 40;
float xSpeed = 0.4*2;
float ySpeed = 0.4*2;

void setup() {
  size(600, 600);
}

void draw() {
  clear();
  background(240, 50, 120);
  fill(240, 40, 235);
  ellipse(xStartposition, yStartposition, 40, 40);

  xStartposition = xStartposition + xSpeed;
  yStartposition = yStartposition + ySpeed;
}
