from django.db import models
from django.conf import settings
import barcode  # additional imports
from barcode.writer import ImageWriter
from io import BytesIO
from django.core.files import File


class asset(models.Model):
    name = models.CharField(max_length=300)
    description = models.TextField(max_length=300)
    barcode = models.ImageField(upload_to="barcodes/", blank=True)
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)

    def __str__(self):
        return self.name

    def save(self, *args, **kwargs):  # overriding save()
        COD128 = barcode.get_barcode_class("code128")
        rv = BytesIO()
        code = COD128(f"{self.name}", writer=ImageWriter()).write(rv)
        self.barcode.save(f"{self.name}.png", File(rv), save=False)
        return super().save(*args, **kwargs)
