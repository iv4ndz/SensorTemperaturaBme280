#  Proyecto Sensor Temperatura Bme280 con Raspberry Pi 3

Hola..! Les comento que es mi primer proyecto en Github y queria publicarlo para recibir ayuda de la comunidad de GITHUB.
Agradezco a cualquiera que pueda sumar en este proyecto, ya que en este momento lo estoy haciendo pruebas en una sala de Servidores y como hay poca información en Español sobre estos proyectos queria compartirlo con ustedes.
Gran parte de este Codigo fue encontrado en un blog http://www.bujarra.com/midiendo-la-presion-atmosferica-con-raspberry-pi/ a quien le estoy agradecido! al Sr Héctor Herrero por publicarlo.
En el blog mencionado anteriormente se trabaja con MySql y yo en esta oportunidad no voy a trabajar con MySql, si no... que sera montado sobre MSSQL y el codigo fue modificado para funcionar De esta manera.
Voy a tratar de ir mejorando y subiendo imagenes para que puedan ver como esta montado y ser claro posible!.


El sensor esta funcionando y recibimos los datos de las lecturas a travez de Grafana open source, un soft de Monitore donde se pueden hacer muchas cosas insteresantes.

https://grafana.com/

Monitoreando con Grafana:

![alt text](https://github.com/idavanzo/SensorTemperaturaBme280-Raspbery-Pi-3/blob/master/Imagenes/MonitorGrafana.JPG)

Materiales
===========

Materiales a usar:

- Raspberry Pi 3 B+
- Sensor de Temperatura BME280.
- Cables Dupont Hembra-Hembra.
- Soldador y Estaño.


Primeros Pasos

En el primer paso debemos tener instalada la Rasberry Pi, creo que no hace falta detallar este paso, ya que hay muchos instructivos en la web para realizar este paso.
En mi caso estoy usando una Raspberry Pi 3 B+ y la imagen de instalación que use pare este proyecto fue una imagen sacada de https://www.raspberrypi.org/downloads/noobs/ que ya viene practicamente todo
hay que tener en cuenta que el sistema tiene que contar con una IP fija y poder ingresar con ssh al sistema.

Sensor BME280

Pongo la imagen del sensor ya que hay algunos modelos y hablaremos sobre su conexión.

![alt text](https://github.com/idavanzo/SensorTemperaturaBme280-Raspbery-Pi-3/blob/master/Imagenes/CapturaSensorBME280.JPG)

Buscando por la Web encontre que solo se usa los primeros 4 pins del Sensor Temperatura Bme280:


VCC   Rasberry (Pin 1)
GND   Rasberry (Pin 9)
SCL   Rasberry (Pin 5)
SDA   Rasberry (Pin 3)
CSB   Rasberry (Sin conexión)
CDO   Rasberry (Sin conexión)

Les dejo una imagen:

![alt text](https://github.com/idavanzo/SensorTemperaturaBme280-Raspbery-Pi-3/blob/master/Imagenes/Configuraci%C3%B3n%20pin.JPG)
