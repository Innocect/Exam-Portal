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

    physics = []
    for i in range(1, 51) :
        physics.append(i)

        chemistry = []
        for i in range(51, 101):
            chemistry.append(i)

        maths = []
        for i in range(101, 151):
            maths.append(i)
    return render(request, 'exam.html', {'questions': myquestion, 'physics': physics, 'chemistry': chemistry, 'maths':maths})


def instructions(request):
    return render(request, 'instructions.html')

def aboutus(request):
    return render(request, 'aboutus.html')
