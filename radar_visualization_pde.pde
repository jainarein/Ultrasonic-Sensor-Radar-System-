import processing.serial.*;

Serial myPort;
String data = "";
int distance = 0;

int centerX, centerY;
int radarRadius = 300;   // Maximum radar radius (pixels)
int maxDistance = 200;   // Maximum distance in cm

void setup() {
  size(700, 600);
  
  // Change COM port according to your system
  myPort = new Serial(this, "COM5", 9600);
  myPort.bufferUntil('\n');

  centerX = width / 2;
  centerY = height - 50;

  frameRate(60);
}

void draw() {
  background(0);

  // -------- Radar Grid --------
  stroke(0, 255, 0, 120);
  noFill();
  for (int i = 1; i <= 4; i++) {
    ellipse(centerX, centerY, radarRadius * i / 2, radarRadius * i / 2);
  }

  // -------- Distance Labels --------
  fill(0, 255, 0);
  textSize(14);
  textAlign(LEFT);
  for (int i = 1; i <= 4; i++) {
    text((i * 50) + " cm", centerX + 10, centerY - (radarRadius * i / 8));
  }

  // -------- Radar Line (Fixed Direction) --------
  float mappedDist = map(distance, 0, maxDistance, 0, radarRadius / 2);
  mappedDist = constrain(mappedDist, 0, radarRadius / 2);

  float objX = centerX;
  float objY = centerY - mappedDist;

  stroke(0, 255, 0, 180);
  line(centerX, centerY, objX, objY);

  // -------- Object Blip --------
  noStroke();
  fill(0, 255, 0);
  ellipse(objX, objY, 12, 12);

  // -------- Distance Display --------
  textSize(24);
  textAlign(CENTER);
  text(distance + " cm", width / 2, height - 20);

  // -------- Title --------
  textSize(18);
  text("ULTRASONIC RADAR", width / 2, 30);
}

void serialEvent(Serial myPort) {
  data = myPort.readStringUntil('\n');
  if (data != null) {
    data = trim(data);
    if (data.length() > 0) {
      distance = constrain(int(data), 0, maxDistance);
    }
  }
}
