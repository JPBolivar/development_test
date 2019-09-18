from django.contrib import admin
from .models import Aerolinea, Avion, Aeropuerto, VueloAvion, Vuelo, Tarifa, Asiento, Itinerario, Reserva, Pasajero, ReservaPasajero, Pago, Tarjeta, PagoTarjeta
# Register your models here.

admin.site.register(Aerolinea)
admin.site.register(Avion)
admin.site.register(Aeropuerto)
admin.site.register(VueloAvion)
admin.site.register(Vuelo)
admin.site.register(Tarifa)
admin.site.register(Asiento)
admin.site.register(Itinerario)
admin.site.register(Reserva)
admin.site.register(Pasajero)
admin.site.register(ReservaPasajero)
admin.site.register(Pago)
admin.site.register(Tarjeta)
admin.site.register(PagoTarjeta)
