#include <OneWire.h> //Se importan las librerías
#include <DallasTemperature.h>
#include <Servo.h>

#define Pin 2 //Se declara el pin donde se conectará la DATA
 
OneWire ourWire(Pin); //Se establece el pin declarado como bus para la comunicación OneWire
DallasTemperature sensors(&ourWire); //Se instancia la librería DallasTemperature
Servo myservo;

int pos = 0;
int temp = 0;
int button = 0;
 
void setup() {
  
  myservo.attach(9);
  pinMode(13, OUTPUT);
  pinMode(8, INPUT);
  Serial.begin(9600);
  sensors.begin(); //Se inician los sensores

}
 
void loop() {
  
  sensors.requestTemperatures(); //Prepara el sensor para la lectura
  temp = sensors.getTempCByIndex(0);
  //AQUÍ SE MODIFICA LA TEMPERATURA
  if(temp < 29 ){
    digitalWrite(13, HIGH);
  }else{
    digitalWrite(13, LOW);
  }
  Serial.print(temp); //Se lee e imprime la temperatura en grados Celsius
  Serial.println(" grados Centigrados");
  
  // S E R V O ************************************************************************************************
  button = digitalRead(8);
  if(button == HIGH){
    for(pos = 0; pos <= 120; pos+=1){
      myservo.write(pos);
      delay(15);
    }
      for(pos = 120; pos >=0; pos-=1){
      myservo.write(pos);
      delay(15);
    }
  }else{
      myservo.write(0);
      delay(15);
  }
  delay(1000); //Se provoca un lapso de 1 segundo antes de la próxima lectura
}
