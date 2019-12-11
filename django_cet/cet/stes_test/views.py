from django.shortcuts import render
from . models import exam_questions
from django.core.paginator import Paginator

# Create your views here.


def welcome(request):
    return render(request, 'welcome.html')


def register(request):
    if request.method == 'POST':
        pass
    return render(request, 'register.html')


def otp(request):
    return render(request, 'otp.html')


def login(request):
    return render(request, 'login.html')


def test_page(request):
    myquestion = exam_questions.objects.all()
    paginator = Paginator(myquestion, 1)# Show 25 contacts per page

    page = request.GET.get('page')
    myquestion = paginator.get_page(page)
    return render(request, 'exam.html', {'questions': myquestion})


def instructions(request):
    return render(request, 'instructions.html')
