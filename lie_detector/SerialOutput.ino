void serialOutput() {
    Serial.print(BPM);
    Serial.print(",");
    Serial.print(IBI);
    Serial.print(",");
    Serial.print(Signal);
    Serial.print(",");
    Serial.println(avr);
}
