from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='cliente'),
    path('formulario/', views.formulario, name='formularios'),
    path('cadastrar/', views.insere_cliente, name='insere_cliente'),
    path('<int:id>', views.deleta_cliente, name='deleta_cliente'),
]