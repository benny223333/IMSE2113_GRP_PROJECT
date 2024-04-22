from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.views.generic import ListView
from asset.models import asset


def user(request):
    return render(request, "asset/user.html")


def info(request):
    return render(request, "asset/info.html")


def Asset(request):
    if request.user.is_authenticated:
        return render(request, "asset/asset.html")
    else:
        return redirect("home")


class AssetListView(ListView):
    model = asset

    def get_context_data(self, **kwargs):

        context = super(AssetListView, self).get_context_data(**kwargs)
        return context
