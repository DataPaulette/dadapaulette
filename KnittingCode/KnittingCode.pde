PImage E, R, S;
int i = 0;
int cnt = 0;

int min_size = 10;
int max_size = 60;

void setup() {
  size(200, 400);
  E = loadImage("sourceLetter/E.png");
  S = loadImage("sourceLetter/S.png");
  R = loadImage("sourceLetter/R.png");
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
  if (key == 'e') {
    int t = int(random(min_size, max_size));
    image(E, random(width), random(height), t, t);
  }
  if (key == 's') {
    int t = int(random(min_size, max_size));
    image(S, random(width), random(height), t, t*S.height/S.width);
  }
  if (key == 'r') {
    int t = int(random(min_size, max_size));
    image(R, random(width), random(height), t, t*S.height/S.width);
  }
  if (key == 'w') {
    save(i+"yo.png");
    println("save");
    i++;
  }
}

