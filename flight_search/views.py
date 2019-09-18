from django.shortcuts import render
from django.views import View
from .models import Aerolinea, Aeropuerto, Vuelo, Tarifa, Itinerario
import datetime

# Create your views here.
def form_search(request):
  return render(request, 'form_search.html')

class results_search(View):
  def post(self, request, *arg, **kwargs):
    aeropuertosOrigen = list(Aeropuerto.objects.filter(ciudad=request.POST['origen']))
    listaVuelos = []
    response = []
    listaAux = list(Vuelo.objects.filter(origenId__in=[ao.id for ao in aeropuertosOrigen]))
    
    # Se filtran los vuelos segun origen y destino
    # la -> lista de aeropuertos
    for lv in list(listaAux):
      if Vuelo.objects.get(id=lv.id).destinoId == Aeropuerto.objects.get(ciudad=request.POST['destino']):
        listaVuelos.append(lv)

    # filtrar lista clase -----------------------------------------    
    listaTarifa = []
    for v in listaVuelos:
      tarifas = list(Tarifa.objects.filter(vueloId=v.id))
      for t in tarifas:
        if t.clase == request.POST['clase']:
          listaTarifa.append(t)

    # obtener itinerarios de los vuelos
    listaItinirarios = []
    for v in listaVuelos:
      listaAux = list(Itinerario.objects.filter(vueloId=v.id))
      for i in listaAux:
        fecha = list(request.POST['f_origen'].split('-'))
        x = datetime.date(int(fecha[0]),int(fecha[1]),int(fecha[2]))
        if i.dia == x.strftime("%a"):
          listaItinirarios.append(i)

    response.append(dict([('vuelos',listaVuelos)]))
    response.append(dict([('Iti_ida',listaItinirarios)]))
    response.append(dict([('tarifas',listaTarifa)]))
    
    print('\nRespuesta: \n\n')
    print(response)

    return render(request, 'results_search.html')
