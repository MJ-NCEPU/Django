from django.shortcuts import render, redirect
from django.urls import reverse

from student.models import Mylesson, Student_lesson


def zhuanmylesson(request):
    stu_lesson = Student_lesson.objects.filter(snum=request.session['snum'])
    if not stu_lesson:
        for i in list(range(1, 15)):
            ob = Student_lesson()
            ob.snum = request.session['snum']
            ob.lessonid = i
            ob.idstatus = 1
            ob.save()
    else:
        print('you')
    return redirect(reverse('mylesson'))


def mylesson(request):
    mylessones = Mylesson.objects.all()
    s_l = Student_lesson.objects.filter(snum=request.session['snum'])
    context = {'mylessones': mylessones, 'student_lesson': s_l}
    return render(request, 'students/mylesson/mylesson.html', context)


def addmycollect(request, myid=0):
    myles = Student_lesson.objects.filter(snum=request.session['snum']).get(lessonid=myid)
    myles.idstatus = 2
    myles.save()
    return redirect(reverse('mylesson'))


def delmycollect(request, myid=0):
    myles = Student_lesson.objects.filter(snum=request.session['snum']).get(lessonid=myid)
    myles.idstatus = 1
    myles.save()
    return redirect(reverse('mylesson'))


def inlesson(request, myid=0):
    myles = Mylesson.objects.get(id=myid)
    request.session['mylescover_pic'] = myles.cover_pic
    request.session['mylesname'] = myles.name
    return render(request, 'students/mylesson/task.html')


def inlessonhomework(request):
    return render(request, 'students/mylesson/homework.html')


def inlessontask(request):
    return render(request, 'students/mylesson/task.html')


def inlessonzhang(request):
    return render(request, 'students/mylesson/indexwork.html')


def inlessontalk(request):
    return render(request, 'students/mylesson/talk.html')


def biji(request):
    return render(request, 'students/mylesson/biji.html')


def knowledge(request):
    return render(request, 'students/mylesson/knowledge.html')
