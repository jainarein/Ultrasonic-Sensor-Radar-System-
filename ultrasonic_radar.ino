#include <Servo.h>

Servo myServo;  
int trigPin = 9;    
int echoPin = 10;   

void setup() {
  Serial.begin(9600);
  myServo.attach(11);
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
}

void loop() {
  for (int angle = 15; angle <= 165; angle++) {
    myServo.write(angle);
    delay(30);
    int distance = calculateDistance();
    Serial.print(angle);
    Serial.print(",");
    Serial.println(distance);
  }

  for (int angle = 165; angle >= 15; angle--) {
    myServo.write(angle);
    delay(30);
    int distance = calculateDistance();
    Serial.print(angle);
    Serial.print(",");
    Serial.println(distance);
  }
}

int calculateDistance() {
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
  long duration = pulseIn(echoPin, HIGH);
  int distance = duration * 0.034 / 2;
  return distance;
}
