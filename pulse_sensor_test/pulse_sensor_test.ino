//int led = 2;
unsigned int ma[10];
unsigned long avr = 0;


void setup() {
  Serial.begin(115200);
  
  //pinMode(led, OUTPUT);
}

void loop() {
  unsigned int raw;
  // put your main code here, to run repeatedly:
  Serial.print(0);  // To freeze the lower limit
Serial.print(" ");
Serial.print(300);  // To freeze the upper limit ili 400
Serial.print(" ");
for(int i = 0; i < 9; i++) {
  ma[i] = ma[i+1];
}
  raw = analogRead(A0)-400;
  //raw = raw >> 2;
  //raw *= 20;
  ma[9] = raw;
for(int i = 0; i < 10; i++) {
  avr += ma[i];
}
avr  = avr/10;

  Serial.println(avr);
}
