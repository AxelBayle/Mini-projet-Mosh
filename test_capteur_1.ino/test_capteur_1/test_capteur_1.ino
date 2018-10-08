#include <TheThingsNetwork.h>
#include <SoftwareSerial.h>
#include <LowPower.h>
#define debugSerial Serial
#define freqPlan TTN_FP_EU868
#define LORA_RESET_PIN 2

// Init Lora
const char *devAddr = "26011D63";
const char *nwkSKey = "AAE40BF7512D859CE06BFE81E4589C3A";
const char *appSKey = "63CCD4AF10A681E3416C279FE2CF7EA8";

SoftwareSerial loraSerial(4,5); // émulation port série sur les PIN 4 et 5

TheThingsNetwork ttn(loraSerial, debugSerial, freqPlan);

// Callback IT
void callback_alert()
{
  Serial.println (" in  callback");
  digitalWrite(10,HIGH);
}

void callback_alert_end()
{
  Serial.println (" in  callback_end");
  digitalWrite(10,LOW);
}

void setup() {
    // désactivation modules useless
    //LowPower.powerDown(SLEEP_FOREVER, ADC_OFF, BOD_ON);
    
    // definition baudrate 
    debugSerial.begin(9600);
    loraSerial.begin(57600);
    
    // init PIN
    pinMode(A0,INPUT);
    pinMode(10,OUTPUT);
    pinMode(LORA_RESET_PIN, OUTPUT);
    pinMode(7, INPUT_PULLUP);

    // reset LoRa
    digitalWrite(LORA_RESET_PIN, LOW);
    delay(500);
    digitalWrite(LORA_RESET_PIN,HIGH);
  
    // Connexion LoRa
    ttn.personalize(devAddr, nwkSKey, appSKey);

    // Init IT
    attachInterrupt(0, callback_alert_end, FALLING);
    attachInterrupt(1, callback_alert, RISING);
}

void loop() {

    /* Capteur de gaz : lecture des donées et envoi sur le port série */
    float sensor_volt;
    float sensorValue;

    sensorValue = analogRead(A0);
    sensor_volt = sensorValue/1024*5.0;

    debugSerial.print("sensor_volt = ");
    debugSerial.print(sensor_volt);
    debugSerial.println("V");

    debugSerial.print("sensor value = ");
    debugSerial.println(sensorValue);

    /* Si seuil > 0.05 V on allume la LED */
    if (sensorValue > 255)
    {
      digitalWrite(10,HIGH);
    }
    else
    {
      digitalWrite(10,LOW);
    }

    /* Création tab */
    byte data[2];
    data[0] = int(sensorValue) / 255;
    data[1] = int(sensorValue) % 255 ;

    /*Envoi des données*/
    ttn.sendBytes(data,sizeof(data));
    
    delay(10000);
}
