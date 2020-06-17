int upperLimit = 512;
int lowerLimit = 512;
int thresh = 515; // граница, над която се отчита пулс
int rate[10]; // масив, в който се събират последните стойности на IBI

void interruptSetup(){
  // Initializes Timer2 to throw an interrupt every 2mS.
  TCCR2A = 0x02;
  TCCR2B = 0x06;
  OCR2A = 0X7C;
  TIMSK2 = 0x02;
  sei();
}

// Timer 2 makes sure that we take a reading every 2 miliseconds
ISR(TIMER2_COMPA_vect){ // triggered when Timer2 counts to 124
  cli();
  Signal = analogRead(pulsePin);
  countTime += 2;
  int timeDifference = countTime - lastBeatTime;

  if (timeDifference > 250 && Signal > thresh) {
      IBI = countTime - lastBeatTime;
      lastBeatTime = countTime;

      int runningTotal = 0;

      for(int i=0; i<=8; i++) {
        rate[i] = rate[i+1];
        runningTotal += rate[i];
      }

      rate[9] = IBI;
      runningTotal += rate[9];
      runningTotal /= 10;
      BPM = 60000/runningTotal;
  }
  sei();
}
