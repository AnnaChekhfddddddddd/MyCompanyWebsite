from django.db import models

class Service(models.Model):
    title = models.CharField(max_length=100, help_text="Назва послуги")
    description = models.TextField(help_text="Опис послуги")

    def __str__(self):
        return self.title