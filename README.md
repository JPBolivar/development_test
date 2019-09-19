# Test de Desarrollo

_Este proyecto consiste en el desarrollo de una funcionalidad especifica de un aplicativo de reservas de vuelos que permite al usuario hacer consultas y reservas de vuelo, ademas de poder comprar los voletos de viaje de forma remota._

## Funcionalidad Desarrollada 🚀

_Se desarrollo la funcionalidad de **Busqueda de Vuelos**, la cual se sustenta en los siguientes criterios de busqueda._

* **Fechas de Vuelo:** Permite ingresar la fecha del vuelo, y en caso de buscar un trayecto completo se solicita especificar la fecha de regreso.
* **Origen - Destino:** Solicita la ciudad de origen y destino del vuelo, con el fin de relacionar los aeropuertos que prestan el servicio en las respectivas ciudades.
* **Cantidad de Pasajeros:** Solicita la cantidad de pasajeros que viajan para validar la disponibilidad de cupo en los vuelos.
* **Clase de tiquete:** Permite especificar la clase de los tiquetes que busca (Ejecutiva y económica).

### Pre-requisitos e Instalacion ⚙️

_Para correr el proyecto es necesario instalar las siguientes dependecias en el entorno de desarrollo en el cual se esta trabajando_

**Instrucciones para Windows**

_Primero se debe instalar python3, en caso de ser windows 10 puede hacerlo desde [Microsoft Store](https://www.microsoft.com/en-us/p/python-37/9nj46sx7x90p?activetab=pivot:overviewtab), o llendo direcatamente a la pagina princiapal de [Python](https://www.python.org/downloads/), y tambien debe instalarse [MySQL](https://www.mysql.com/downloads/) para configurar la base de datos._

_Una vez instalado python y MySQL, se debe crear un entorno de desarrollo virtual (preferiblemente) para no instalar las dependencias de forma global._

```
python -m venv envTest
```

_luego, se procede a activar el entorno creado._

```
envTest/Scripts/activate
```

_Finalmente, se instalan las dependencias necesarios por medio del siguiente comando._

```
pip install django mysql-connector-python cymysql django-cymysql
```

_Para terminar, se debe clonar el repositorio y correr el servidor entrando a la carpeta del proyecto, y ejecutando el siguiente comando en la terminal_

```
python manage.py runserver
```

### Base de Datos 📦

_Para configurar la base de datos, se debe crear una base de bados en MySQL empleando el [Dump](https://github.com/JPBolivar/development_test/tree/master/dataDB) dentro de la caperta dataDB, o tambien se puede generar por medio de la migracion del modelo definido en la app 'flight_search' pero en este caso se debe proceder a poblar la base de datos atraves del panel de administracion del projecto._

_Para realizar las migraciones se deben correr los siguientes comandos en la terminal desde la raiz del proyecto._

```
python manage.py makemigrations
python manage.py migrate
```

### Adminisdor del Proyecto ⌨️

_En caso de haber creado la base de datos apartir del Dump, existe un super usuario (usuario: **root** , constraseña: **root123** ) para entrar al panel de administracion del proyecto, y en caso contrario de haberla creado por medio de migracion de los modelos este super usuario debe crearse ejecutando el siguiente comando en la terminal_

```
python manage.py createsuperuser
```

_Para ingresar al panel de administrar del proyecto se deben dirigir a [localhost:8000/admin](http://localhost:8000/admin) e iniciar sesion con las credenciales del super usuario._

## Construido con 🛠️

* [Python3](https://docs.python.org/3/) - Lenguaje principal
* [Django](https://docs.djangoproject.com/en/2.2/) - Framework de desarrollo
* [MySQL](https://dev.mysql.com/doc/) - Motor de base de datos

## Autores ✒️

* **Juan Pablo Bolivar Martinez** - *Test de desarrollo en python3 con Django y MySQL* - [jpbolivarm](https://github.com/JPBolivar)
