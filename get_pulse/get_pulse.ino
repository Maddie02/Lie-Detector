int led = 1;
int Signal = 0;
bool pulse = false;
unsigned int BPM = 0;
unsigned int threshold = 518;
unsigned int IBI = 600; // Interbeat Interval (Time between beats)
unsigned int counter = 0;
unsigned int lastBeat = 0;

void setup() {
  pinMode(led, OUTPUT);
  Serial.begin(115200);
}

void loop() {
  handle_pulse();
  display_BPM();
}

void handle_pulse() {
  int rate[10] = {0};
  Signal = analogRead(A0);

  if (pulse == false) {
    BPM = 0;
  }

  counter += 2;
  
  if (Signal > threshold) {
    unsigned int total = 0;
    pulse = true;
    IBI = counter - lastBeat;
    lastBeat = counter;
    
    for (int i = 0; i < 9; i ++) {
      rate[i] = rate[i + 1];
      total += rate[i];
    }

    rate[9] = IBI;
    total += rate[9];
    total /= 10;
    BPM = 60000 / total;
    
  }
  else 
  {
    pulse = false;
  }

  
}

void display_BPM() {
  Serial.print(IBI);
  Serial.print(",");
  Serial.print(Signal);  
  Serial.print(",");
  Serial.println(BPM);
}
