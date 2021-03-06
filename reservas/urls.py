from django.urls import path
from . import views

urlpatterns = [
    path('', views.indexreserva, name='reservas'),
    path('formularioreserva/', views.formularioreserva, name='formulariosreserva'),
    path('cadastrarreserva/', views.insere_reserva, name='insere_reserva'),
    path('reserva/<int:id>', views.deleta_reserva, name='deleta_reserva'),
]
