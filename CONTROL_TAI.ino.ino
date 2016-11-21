// Universidad del Valle de Guatemala
// Taller de Assembler - Ing. Christian Medina
// Integrantes:
//    Christian Morales - 15015
//    José Luis Méndez - 15024
//    Marlon Hernández - 15177
//    Rodolfo Cacacho - 15223
// Nautilus Pi - Pecera Automatizada
// Programa Arduino: se maneja el control del sensor y el servo, se maneja una intercomunicación de señales (I/O) con la Raspberry Pi

#include <OneWire.h> //Se importan las librerías
#include <DallasTemperature.h>
#include <Servo.h>

#define Pin 2 //Se declara el pin donde se conectará la DATA
#define signal1 1
#define send1 4
 
OneWire ourWire(Pin); //Se establece el pin declarado como bus para la comunicación OneWire
DallasTemperature sensors(&ourWire); //Se instancia la librería DallasTemperature
Servo myservo;

int pos = 0;
int temp = 0;
int button = 0;
 
void setup() {
  
  myservo.attach(9);
  pinMode(13, OUTPUT);
  pinMode(14, OUTPUT);
  pinMode(8, INPUT);
  pinMode(signal1, INPUT);
  pinMode(send1, OUTPUT);
  Serial.begin(9600);
  sensors.begin(); //Se inician los sensores
  myservo.write(0);

}
 
void loop() {
  
  sensors.requestTemperatures(); //Prepara el sensor para la lectura
  temp = sensors.getTempCByIndex(0);
  //AQUÍ SE MODIFICA LA TEMPERATURA
  if(temp <= 25 ){
    digitalWrite(13, HIGH);
    digitalWrite(14, HIGH);
  }else{
    digitalWrite(13, LOW);
    digitalWrite(14, LOW);
  }
  Serial.print(temp); //Se lee e imprime la temperatura en grados Celsius
  Serial.println(" grados Centigrados");
  
  // S E R V O ************************************************************************************************
  button = digitalRead(8);
  if(button == HIGH){
    for(pos = 0; pos <= 130; pos+=1){
      myservo.write(pos);
      delay(25);
    }
    delay(500);
    for(pos = 130; pos >=0; pos-=1){
      myservo.write(pos);
      delay(3);
    }
  }else{
      myservo.write(0);
      delay(15);
  }
  //LEE SEÑAL DE RASP Y MANDA ()
  if(digitalRead(signal1) == HIGH){
    digitalWrite(send1, HIGH);
  }else{
    digitalWrite(send1, LOW);
  }
  delay(1000); //Se provoca un lapso de 1 segundo antes de la próxima lectura
}
