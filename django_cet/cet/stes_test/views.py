from django.shortcuts import render
from . models import questions

# Create your views here.


def welcome(request):
    return render(request, 'welcome.html')


def register(request):
    if request.method == 'POST':
        pass
    return render(request, 'register.html')


def otp(request):
    return render(request, 'otp.html')


def test_page(request):
    myquestion = questions.objects.all()
    for q in myquestion:
        print(q.question)
    return render(request, 'exam.html', {'questions': myquestion})


def instructions(request):
    return render(request, 'instructions.html')
