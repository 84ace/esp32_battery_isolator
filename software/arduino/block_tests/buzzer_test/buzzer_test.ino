const int buzzer = 18; //buzzer to arduino pin 9

void setup() {
  ledcSetup(0,1E5,12);
  ledcAttachPin(buzzer,0);
}
void loop() {
  ledcWriteTone(0,800);
  delay(1000);
  uint8_t octave = 1;
  ledcWriteNote(0,NOTE_C,octave);  
  delay(1000);
}