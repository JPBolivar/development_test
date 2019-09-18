from django.db import models
from enum import Enum

# Enumeraciones

class ModeloAvion(Enum):
  AIRBUS_A318 = "A318"
  AIRBUS_A319 = "A319"
  AIRBUS_A320 = "A320"
  AIRBUS_A330 = "A330"
  AIRBUS_A340 = "A340"
  AIRBUS_A350 = "A350"
  AIRBUS_A380 = "A380"
  BOEING_717 = "B717"
  BOEING_727 = "B727"
  BOEING_737_MAX = "B737M"
  BOEING_747 = "B747"
  BOEING_757 = "B757"
  BOEING_767 = "B767"
  BOEING_777 = "B777"
  BOEING_787 = "B787"

class ClaseTarifa(Enum):
  EJ = "EJECUTIVA"
  EC = "ECONOMICA"

class Dias(Enum):
  LUNES = "Mon"
  MARTES = "Tue"
  MIERCOLES = "Wed"
  JUEVES = "Thu"
  VIERNES = "Fri"
  SABADO = "Sat"
  DOMINGO = "Sun"

class TipoTarjeta(Enum):
  TARJETA_CREDITO = "TC"
  TARJETA_DEBITO = "TD"

########################################################################

class Aerolinea(models.Model):
  # Entidad -> Aerolineas a la cual estan registrados los avines
  nombre = models.CharField(max_length=40, primary_key=True)
  codigolata = models.CharField(max_length=30)

  def __str__(self):
    return self.nombre


class Avion(models.Model):
  # Entidad -> Informaciones de los tipos de aviones
  aerolineaId = models.ForeignKey(Aerolinea, on_delete=models.CASCADE, db_column='aerolineaId', default=0)
  modeloAvion = models.CharField(
    max_length=40,
    choices=[(tag.value , tag.name) for tag in ModeloAvion]
  )
  nroPasajeros = models.IntegerField()

  def __str__(self):
    return "Modelo: {} - Capacidad: {} personas".format(self.modeloAvion,self.nroPasajeros)


class Aeropuerto(models.Model):
  # Entidad -> Aeropuertos por ciudad
  nombre = models.CharField(max_length=40)
  codigolata = models.CharField(max_length=30)
  ciudad = models.CharField(max_length=25)
  pais = models.CharField(max_length=25)

  def __str__(self):
    return "{} - {}".format(self.nombre, self.ciudad)


class Vuelo(models.Model): # OK
  # dataType -> Rutas de vuelo
  aerolineaId = models.ForeignKey(Aerolinea, on_delete=models.CASCADE, db_column='aerolineaId', default=0)
  nroVuelo = models.CharField(max_length=30)
  origenId = models.ForeignKey(Aeropuerto, on_delete=models.CASCADE, related_name='origenId', null=False)
  destinoId = models.ForeignKey(Aeropuerto, on_delete=models.CASCADE, related_name='destinoId', null=False)

  def __str__(self):
    return "{}: {} - {} :: {}".format(self.aerolineaId, self.origenId, self.destinoId, self.nroVuelo)


class VueloAvion(models.Model): # OK
  # dataType -> Registro de los aviones para las rutas de vuelo
  avionId = models.ForeignKey(Avion, on_delete=models.CASCADE, db_column='avionId', null=False)
  vueloId = models.ForeignKey(Vuelo, on_delete=models.CASCADE, db_column='vueloId', null=False)
  
  def __str__(self):
    return "{} - {}".format(self.vueloId, self.avionId)


class Tarifa(models.Model):
  # Entidad -> Tarifas por clase para cada vuelo
  vueloId = models.ForeignKey(Vuelo, on_delete=models.CASCADE, null=False)
  clase = models.CharField(
    max_length=40,
    choices=[(tag.name , tag.value) for tag in ClaseTarifa]
  )
  precio = models.BigIntegerField(max_length=None, default=0)
  impuestos = models.BigIntegerField(max_length=None, default=0)

  def __str__(self):
    return "{} - {}: {}".format(self.vueloId, self.clase, self.precio)

class Asiento(models.Model):
  # Entidad -> Asientos de cada vuelo
  vueloId = models.ForeignKey(Vuelo, on_delete=models.CASCADE, null=False)
  fila = models.IntegerField(default=0)
  letra = models.CharField(max_length=2, default='A')

  def __str__(self):
    return "{} - {}{}".format(self.vueloId, self.letra, self.fila)

class Itinerario(models.Model):
  # Entidad -> Itenerarios de viaje de los vuelos
  vueloId = models.ForeignKey(Vuelo, on_delete=models.CASCADE, null=False)
  dia =  models.CharField(
    max_length=40,
    choices=[(tag.value , tag.name) for tag in Dias]
  )
  hora = models.TimeField(auto_now=False)

  def __str__(self):
    return "{} - {} - {}".format(self.vueloId, self.dia, self.hora)

class Pasajero(models.Model):
  # Informacion del pasajero cliente
  nombre = models.CharField(max_length=30, blank=False)
  direccion = models.CharField(max_length=20, blank=False)
  ciudad = models.CharField(max_length=30, blank=False)
  pais = models.CharField(max_length=30, blank=False)
  telCasa = models.CharField(max_length=30, blank=False)
  telMobile = models.CharField(max_length=30, blank=False)
  email = models.CharField(max_length=30, blank=False)

  def __str__(self):
    return self.nombre 


class Reserva(models.Model):
  # Entidad -> Reservas realizadas
  vueloId = models.ForeignKey(Vuelo, on_delete=models.CASCADE, null=False)
  clave = models.CharField(max_length=20)
  costoTotal = models.IntegerField(default=0) 

  def __str__(self):
    return "{} - {}".format(self.vueloId, self.costoTotal)

class ReservaPasajero(models.Model):
  # Rerservas realizadas por el cliente
  reservaId = models.ForeignKey(Reserva, on_delete=models.CASCADE, null=False)
  pasajeroId = models.ForeignKey(Pasajero, on_delete=models.CASCADE, null=False) 

  def __str__(self):
    return "{} - {}".format(self.pasajeroId, self.reservaId)

class Pago(models.Model):
  reservaId = models.ForeignKey(Reserva, on_delete=models.CASCADE, null=False)
  fecha = models.DateTimeField(auto_now_add=False)
  cantidad = models.IntegerField(default=0)

  def __str__(self):
    return "{}: {} - {}".format(self.reservaId, self.fecha, self.cantidad)

class Tarjeta(models.Model):
  propietarioId = models.ForeignKey(Pasajero, on_delete=models.CASCADE, null=False)
  nombre = models.CharField(max_length=30, blank=False)
  numero = models.CharField(max_length=30, blank=False)
  tipo = models.CharField(
    max_length=40,
    choices=[(tag.name , tag.value) for tag in TipoTarjeta]
  )
  fecha = models.DateField(auto_now_add=False)
  vencimiento = models.DateField(auto_now_add=False)

  def __str__(self):
    return "{} | {}: {} | Vence: {}".format(self.nombre, self.tipo, self.numero, self.vencimiento)

class PagoTarjeta(models.Model):
  tarjetaId = models.ForeignKey(Tarjeta, on_delete=models.CASCADE, null=False)
  pagoId = models.ForeignKey(Pago, on_delete=models.CASCADE, null=False)

  def __str__(self):
    return "{} - {}".format(self.tarjetaId, self.pagoId)


