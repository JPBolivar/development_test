# Test de Desarrollo

_Este proyecto consiste en el desarrollo de una funcionalidad especifica de un aplicativo de reservas de vuelos que permite al usuario hacer consultas y reservas de vuelo, ademas de poder comprar los voletos de viaje de forma remota._

## Funcionalidad Desarrollada 🚀

_Se desarrollo la funcionalidad de **Busqueda de Vuelos**, la cual se sustenta en los siguientes criterios de busqueda._

* **Fechas de Vuelo:** Permite ingresar la fecha del vuelo, y en caso de buscar un trayecto completo se solicita especificar la fecha de regreso.
* **Origen - Destino:** Solicita la ciudad de origen y destino del vuelo, con el fin de relacionar los aeropuertos que prestan el servicio en las respectivas ciudades.
* **Cantidad de Pasajeros:** Solicita la cantidad de pasajeros que viajan para validar la disponibilidad de cupo en los vuelos.
* **Clase de tiquete:** Permite especificar la clase de los tiquetes que busca (Ejecutiva y económica).

### Pre-requisitos 📋

_Para correr el proyecto es necesario instalar las siguientes dependecias en el entorno de desarrollo en el cual se esta trabajando_

**Windows**

_Primero se debe instalar python3, en caso de ser windows 10 puede hacerlo desde [Microsoft Store](https://www.microsoft.com/en-us/p/python-37/9nj46sx7x90p?activetab=pivot:overviewtab), o llendo direcatamente a la pagina princiapal de [Python](https://www.python.org/downloads/)._

_Una vez instalado python, crear un entorno de desarrollo virtual para no instalar las dependencias de forma global y controlada._

```
python -m venv envTest
```

_luego, se procede a activar el entorno creado._

```
envTest/Scripts/activate
```

_Finalmente, se instalan las dependencias necesarios por medio del siguiente comando._

```
pip install django mysql-connector-python cymysql django-cymysql unipath
```

