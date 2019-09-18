from django.urls import path
from .views import form_search, results_search

urlpatterns = [
  path('', form_search, name='form_search'),
  path('results/', results_search.as_view(), name='results_search'),
]