

PImage E, R, S;  
int i;

void setup() {
  size(200, 500);
  E = loadImage("sourceLetter/E.png");  
  S = loadImage("sourceLetter/S.png");  
  R = loadImage("sourceLetter/R.png");  
  background(255);
}

void draw() {
  println("-");
}

void keyPressed() {
  println(key);
  if (key == 'e') {
    int t = int(random(20, 50));  
    image(E, random(width), random(height), t, t);
  }
  if (key == 's') {
    int t = int(random(20, 50));  
    image(S, random(width), random(height), t, t*S.height/S.width);
  }
  if (key == 'r') {
    int t = int(random(20, 50));  
    image(R, random(width), random(height), t, t*S.height/S.width);
  }
  if (key == 'w') {
    save(i+"yo.png");
    println("save");
    i++;
  }
}