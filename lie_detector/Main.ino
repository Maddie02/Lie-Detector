#define BPM_RAISE 10

int pulsePin = 0;
int red_led = 9;
int green_led = 10;
int blue_led = 11;

unsigned long countTime = 0;
unsigned long lastBeatTime = 0;

volatile int BPM;
volatile int Signal;
volatile int IBI = 600;
int avr_bpm[10];
int avr = 0;
int counter = 0;
unsigned long time;

void setup(){
  pinMode(red_led, OUTPUT);
  pinMode(green_led, OUTPUT);
  pinMode(blue_led, OUTPUT);
  Serial.begin(115200);
  interruptSetup();
}


void loop(){

  time = millis();
  
  serialOutput();

  if (time < 25000) {
    avr = 0;
    for (int i = 0; i < 4; i++) {
      avr_bpm[i] = avr_bpm[i + 1];
      avr += avr_bpm[i];
    }
      
      avr_bpm[4] = BPM;
      avr += avr_bpm[4];
      avr /= 5;
    }

  if (BPM > avr + BPM_RAISE) {
    RGB_color(255, 0, 0);
  }
  else
  {
    RGB_color(0, 255, 0);
  }
}

void RGB_color(int red_light_value, int green_light_value, int blue_light_value)
{
  analogWrite(red_led, red_light_value);
  analogWrite(green_led, green_light_value);
  analogWrite(blue_led, blue_light_value);
}
