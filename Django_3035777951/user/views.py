from django.shortcuts import render, redirect
from django.http import HttpResponse

from django.contrib.auth.models import User
from .forms import Login
from django.contrib.auth import login, authenticate, update_session_auth_hash, logout
from django.contrib.auth.forms import PasswordChangeForm
from django.contrib import messages


# Create your views here.
def log_in(request):
    if request.method == "GET":
        form = Login()
        return render(request, "user/login.html", {"form": form})
    else:
        form = Login()
        username = request.POST["Username"]
        password = request.POST["Password"]
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            return redirect("home")
        else:
            messages.error(request, "Wrong username or password")
    return render(request, "user/login.html", {"form": form})


def home(request):
    return render(request, "home.html")


def reset(request):
    if request.user.is_authenticated:
        form = PasswordChangeForm(request.user, request.POST)
        if form.is_valid():
            user = form.save()
            update_session_auth_hash(request, user)
            return redirect("password_reset_done")
        return render(request, "user/password_reset.html", {"form": form})
    else:
        return redirect("home")


def reset_done(request):
    return render(request, "user/password_reset_done.html")


def sign_up(request):
    if request.method == "GET":
        form = Login()
        return render(request, "user/sign_up.html", {"form": form})
    else:
        form = Login(request.POST)
        username = request.POST["Username"]
        password = request.POST["Password"]
        user = User.objects.create_user(username=username, password=password)
        user.save()
        messages.success(request, "Account created.")
        # return redirect("login")

    return render(request, "user/sign_up.html", {"form": form})


def contact(request):
    return render(request, "user/contact.html")


def log_out(request):
    logout(request)
    return redirect("home")
