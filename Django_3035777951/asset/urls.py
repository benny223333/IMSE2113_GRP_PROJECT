from django.urls import path
from asset import views
from asset.models import asset

asset_list_view = views.AssetListView.as_view(
    queryset=asset.objects.order_by("id"),
    context_object_name="asset_list",
    template_name="asset/asset.html",
)

urlpatterns = [
    path("asset/", asset_list_view, name="asset"),
]
