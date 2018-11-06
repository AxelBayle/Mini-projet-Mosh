# Mini-projet-Mosh

## Projet Capteur de Gaz sur Arduino
### Introduction
Dans le cadre de l'UF MOSH (Microcontroleurs and Open Source Hardware) de la 5e année ISS, nous avons conçu un système de captation de certains gaz (gaz naturel, monoxyde de carbone, gaz de charbon) et la transmission des informations capteur via Lora pour pouvoir les visualiser en ligne à distance et être alerté si un certain seuil est dépassé. Deux capteurs ont été utilisés afin de réaliser ce système de détection. Le premier est un capteur commercial existant, le deuxième a été créé par nos soins et fera l'objet d'une partie dédiée quant à son conception et son fonctionnement.

### Code arduino embarqué
#### Concept principal
L'objectif de notre système est de définir à travers les informations reçues par un capteur de gaz une alerte et une visualisation en temps réelle du niveau de gaz capté à travers une plateforme web dédiée. Les données capteur sont transmises à la carte Arduino puis mises en forme avant d'être envoyées via Lora à la plateforme TheThingsNetwork. Elles transitent ensuite vers un serveur dédié où la plateforme NodeRed permet de les mettre en forme et de les afficher de façon lisible.

#### Architecture
Le code embarqué sur l'Arduino est structuré en 4 grandes parties :
* Import des librairies et définition des constantes
* Définitions des callback des interruptions
* le void setup() où les GPIO sont initialisés ainsi que les interruptions et uù l'on effectue le Reset de la puce Lora
* le void loop(), la partie exécutive du code où l'on récupère les données du capteur avant de les mettre forme et de les envoyer via l'antenne Lora

#### Capteurs et Actionneurs
Dans cette version nous utilisons le capteur de gaz commercial MQ5 pour Arduino. En plus du capteur en lui même le système comporte une LED rouge pour l'alerte en cas de dépassement du seuil défini. Il y a aussi un montage servant de déclencheur pour l'interruption dans le cas où la tension mesurée par le capteur est plus élevée que le seuil.

#### Librairies utilisées
Nous utilisons 2 librairires en plus de ce qui est déjà inclus dans l'environnement d'Arduino.
* SoftwareSerial.h : permet d'émuler un port série sur un port  GPIO classique. Cette librairie est nécessaire pour utiliser le dongle Lora et nous permet d'avoir deux bus séries. Le premier pour la communication avec la puce Lora et le deuxième pour le débugage et l'affichage sur le moniteur.
* TheThingsNetwork.h : permet de transférer des données en utilisant le protocole Lora et de les faire transiter via la plateforme pour IoT thethingsnetwork.org

### Réception des données sur TheThingsNetwork
La mise en forme des données sur TTN a été pensée pour être le plus simple possible. La valeur retourné par le capteur est convertie en valeur binaire sur deux octets puis envoyée directement. Ainsi on envoi le moins de données possible car il n'y a que la valeur interessante qui est envoyé.

### Mise en forme des données avec NodeRed
La première étape sur NodeRed est d'extraire la valeur du message. Pour cela il suffit de récupérer la valeur dans le champs payload. Ensuite on peut afficher directement cette valeur sur une interface de type graphique ou jauge. Mais la valeur est une valeur comprise en 0 et 1024 et n'est pas très significative, c'est pour ça que nous avons aussi traduit cette valeur en tension ( formule de conversion ADC ) pour l'afficher dans une jauge séparée. Cet affichage est beaucoup plus parlant car la valeur affichée et la tension du capteur.

![Capture du schéma NodeRed de notre dashboard](https://github.com/AxelBayle/Mini-projet-Mosh/blob/developpement/IMG/Capturenodered.PNG)

### Conclusion & Résultats obtenus
Le premier constat de notre solution est une importante consommation de courant, cependant en investigeant et en analysant les différentes parties on a compris que cela venait du capteur car celui-ci a besoin de travailler à haute température pour avoir une meilleure réactivité aux gaz, c'est pourquoi nous n'avons pas éssayé de réduire le courant consommé par notre code et notre montage (capteur excepté) car cela représente moins de 1/5 de la consommation totale.

Quant aux résultats obtenus, nous sommes très satisfaits car le système répond vite à la présence de gaz, la gestion des interruptions est précise grâce au filtre rajouté, enfin le dahsboard est clair et sobre mais fournit toutes les infos voulues.
## Conception d'un capteur de gaz à nano-particules
Par la suite nous allons fabriquer un capteur de gaz à nano-particules, pour l'introduire sur notre carte on a choisi de faire une carte séparée qui va être en charge de l'amplification du signal et cette carte sera connectée au shield via une liaison 4fils groove.
