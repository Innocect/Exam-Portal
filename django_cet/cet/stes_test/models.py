from django.db import models

# Create your models here.


class questions(models.Model):
    question_id = models.AutoField(primary_key=True)
    question = models.CharField(max_length=400)
    option1 = models.CharField(max_length=400)
    option2 = models.CharField(max_length=400)
    option3 = models.CharField(max_length=400)
    option4 = models.CharField(max_length=400)
    answer = models.IntegerField()
