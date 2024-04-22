from django.urls import path
from user import views

urlpatterns = [
    path("", views.home, name="home"),
    path("home/", views.home, name="home"),
    path("password_reset/", views.reset, name="password_reset"),
    path("passwrod_reset_done/", views.reset_done, name="password_reset_done"),
    path("sign_up/", views.sign_up, name="sign_up"),
    path("login/", views.log_in, name="login"),
    path("logout/", views.log_out, name="logout"),
    path("")
]
