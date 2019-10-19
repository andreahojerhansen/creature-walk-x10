float[] xStartposition = new float[10]; //= 40 
float[] yStartposition = new float[10]; //= 40;
float[] xSpeed = new float[10];// = 2;
float[] ySpeed = new float[10];// = 0.4*2;
int[] xDirection = new int[10]; // = 1;
int[] yDirection = new int[10]; // = 1;
int[] SizeA = new int[10];
int[] SizeB = new int[10];
int[] BigBallA = new int[10];
int[] BigBallB = new int[10];


//int SizeA = int(random(1, 150));
//int SizeB = int(random(1, 150));
int R = 0 ;
void setup() {
  size(600, 600);
  
  for(int i = 0;i<10;++i) {
    xStartposition[i] = 20 + i;
    yStartposition[i] = 20 + i;
    xSpeed[i] = 2  + i;
    ySpeed[i] = R = int(random(1, 11)); 
    xDirection[i] = 1;
    yDirection[i] = 1;
    SizeA [i] = int(random(1, 15));
    SizeB [i] = int(random(1, 15));
   
  }
}
void draw() {
  clear();
  background(240, 50, 120);
  //fill(240, 40, 235);
  
  for(int i = 0;i<10;++i) {
    SizeA [i] = SizeA [i] + 1;
    SizeB [i] = SizeB [i] + 1;
    fill(240, 40, 235);
    ellipse(xStartposition[i], yStartposition[i], SizeA [i] , SizeB [i]);
    
    
    xDirection[i] = CalculateDirection(xStartposition[i], xSpeed[i], xDirection[i]);
    xStartposition[i] = xStartposition[i] + xDirection[i] * xSpeed[i];
  
    yDirection[i] = CalculateDirection(yStartposition[i], ySpeed[i], yDirection[i]);
    yStartposition[i] = yStartposition[i] + yDirection[i] * ySpeed[i];
  }
}
int CalculateDirection(float currentPosition, float speed, int currentDirection) {
  float tempPos = currentPosition + speed;
  if(tempPos > 600) {
    currentDirection = -1;
  }
  else if (tempPos < 0) {
    currentDirection = 1;
  }
  
  return currentDirection;
}
