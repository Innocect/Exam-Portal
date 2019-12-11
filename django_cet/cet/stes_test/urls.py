# from django.contrib import admin
from django.urls import path, include
from . import views

urlpatterns = [
    path('', views.welcome, name='welcome'),
    path('register/', views.register, name='register'),
    path('otp/', views.otp, name='otp'),
    path('instructions/', views.instructions, name='instructions'),
    path('exam/', views.test_page, name='test'),
    path('login/', views.login, name='login'),
]
