PImage A, Z, E, R, T, Y;
int i = 0;
int cnt = 0;

int min_size = 10;
int max_size = 60;

void setup() {
  size(200, 400);
  A = loadImage("sourceShape/1.png");
  Z = loadImage("sourceShape/2.png");
  E = loadImage("sourceShape/3.png");
  R = loadImage("sourceShape/4.png");
  T = loadImage("sourceShape/5.png");
  Y = loadImage("sourceShape/6.png");
  background(255);
}

void draw() {
  if (cnt % 10 == 0)
    println(cnt/10);

  delay(100);
  ++cnt;
}

void keyPressed() {
  println(key);
  if (key == 'a') {
    int t = int(random(min_size, max_size));
    image(A, random(width), random(height), t, t);
  }
  if (key == 'z') {
    int t = int(random(min_size, max_size));
    image(Z, random(width), random(height), t, t*Z.height/Z.width);
  }
  if (key == 'e') {
    int t = int(random(min_size, max_size));
    image(E, random(width), random(height), t, t*Z.height/Z.width);
  }
    if (key == 'r') {
    int t = int(random(min_size, max_size));
    image(R, random(width), random(height), t, t*Z.height/Z.width);
  }
    if (key == 't') {
    int t = int(random(min_size, max_size));
    image(T, random(width), random(height), t, t*Z.height/Z.width);
  }
    if (key == 'y') {
    int t = int(random(min_size, max_size));
    image(Y, random(width), random(height), t, t*Z.height/Z.width);
  }
  if (key == 'w') {
    save(i+"yo.png");
    println("save");
    i++;
  }
}