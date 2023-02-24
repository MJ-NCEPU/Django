from django.shortcuts import render
from teacher.models import Teacher_Students
from teacher.models import Notice


def mynotice(request, sclass=0):
    t_s = Teacher_Students.objects.filter(classnum=sclass)
    t_s = t_s.filter(status=1)
    myteacher = []
    for myt in t_s:
        myteacher.append(myt.tgnum)

    mynotices = Notice.objects.all().order_by('-id')
    context = {'myteacher': myteacher, 'mynotices': mynotices}

    return render(request, 'students/mynotice/mynotice.html', context)
