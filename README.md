#  Proyecto Sensor Temperatura Bme280/Raspberry Pi 3

Hola..! Les comento que es mi primer proyecto en Github y quería publicarlo para recibir ayuda de la comunidad de GITHUB.
Agradezco a cualquiera que pueda sumar en este proyecto, ya que en este momento lo estoy haciendo pruebas en una sala de Servidores y como hay poca información en Español sobre estos proyectos quería compartirlo con ustedes.
Gran parte de este Código fue encontrado en un blog http://www.bujarra.com/midiendo-la-presion-atmosferica-con-raspberry-pi/ a quien le estoy agradecido! al Sr Héctor Herrero por publicarlo.
En el blog mencionado anteriormente se trabaja con MySql y yo en esta oportunidad no voy a trabajar con MySql, si no que será montado sobre MSSQL y el código fue modificado para funcionar con Microsoft SQL Server.
Voy a tratar de ir mejorando y subiendo imágenes para que puedan ver como está montado y ser lo más claro posible!.


Desde el sensor envíamos los datos y hacemos las lecturas en Grafana open source, para los que no lo conocen... Grafana es un soft de Monitoreo donde se pueden hacer muchas cosas interesantes pero la instalación no es parte de este instructivo. Una vez finalizado el proyecto, los datos del sensor son alojados en una base de datos y ustedes ya podran consumirlos desde cualquier lado. En este caso usamos Grafana porque es fácil de instalar y además se ve muy bien para este Proyecto! .

Monitoreando con Grafana:

![alt text](https://github.com/ivoxdavanzo/SensorTemperaturaBme280/blob/master/Imagenes/MonitorGrafana.JPG)

Materiales
===========

Materiales a usar:

- Raspberry Pi 3 B+
- Sensor de Temperatura BME280.
- Cables Dupont Hembra-Hembra.
- Soldador y Estaño.


Primeros Pasos

En el primer paso debemos tener instalada la Rasberry Pi, creo que no hace falta detallar este paso, ya que hay muchos instructivos en la web para realizarlo.
En mi caso estoy usando una Raspberry Pi 3 B+ y la imagen de instalación que use pare este proyecto fue una imagen de https://www.raspberrypi.org/downloads/noobs/ que ya viene practicamente todo instalado.

Sensor BME280

Pongo la imagen del sensor ya que hay algunos modelos y pueden diferir su conexión.

![alt text](https://github.com/ivoxdavanzo/SensorTemperaturaBme280/blob/master/Imagenes/CapturaSensorBME280.JPG)

Buscando por la Web, encontre que solo se usa los primeros 4 pin del Sensor Temperatura Bme280.

conexión del sensor:

```
VCC   Rasberry (Pin 1)
GND   Rasberry (Pin 9)
SCL   Rasberry (Pin 5)
SDA   Rasberry (Pin 3)
CSB   Rasberry (Sin conexión)
CDO   Rasberry (Sin conexión)
```
Les dejo una imagen:

![alt text](https://github.com/ivoxdavanzo/SensorTemperaturaBme280/blob/master/Imagenes/Configuraci%C3%B3n%20pin.JPG)

Cuando ya este conectado el sensor, podemos hacer una prueba. Si todo fue como lo esperábamos podemos verificar que las Raspberry lo detecte:
```
sudo i2cdetect -y 1
```

La salida tiene que ser como esta:

![alt text](https://github.com/ivoxdavanzo/SensorTemperaturaBme280/blob/master/Imagenes/Inkedi2cdetect_LI.jpg)

Ya con todo conectado, se debe verificar que tengamos todos los módulos de Python 2.7 instalados como por ejemplo el pyodbc.

Nota: Se debe instalar {FreeTDS} ya que pyodbc solicita conexión por odbc.

Realizar los siguientes pasos:
- Tener creada una base de Datos y configurar el config.py con los datos correspondientes
- Dentro de la base crearemos una tabla que se llame "datos" con la estructura que esta en la carpeta MSSQL (EstructuraBase.sql)
- instalar freetds
- configurar odbc.ini y Freetds el cual voy a dejarles en los repos los ejemplos.
- Crear las carpetas IOT en /var/log/IOT (En esta carpeta figuraran los logs de las mediciones y los errores que se puedan producir con el sensor).


#Para finalizar

La ejecución es simple, y se puede hacer ejecutando bme280.py el cual entrara en un ciclo While que se repetirá cada 120 segundos.
```
python bme280.py
```
Estaré trabajando para mejorar este instructivo, tanto como actualizando el código y la versión de python.
Saludos!
