from django.shortcuts import render, redirect
from django.urls import reverse

from teacher.models import Teacher_Students
from teacher.models import Class2018102, Class2018104, Class2018105, Class2018101
from teacher.models import Class2018103, Class2018106, Class2018107, Class2018108

def qiandao(request):
    #获取Teacher_Students表中gunm为此老师工号的所有数据，status=1表示该班级在被管理
    ob = Teacher_Students.objects.filter(tgnum=request.session['gnum'])
    context = {"classlist": ob}
    return render(request, 'teacher/qiandao/qiandao.html', context)


def qiandaoindex(request, classnum=0):
    #获取班级classnum的签到情况
    strdb = 'Class' + str(classnum)
    if strdb == 'Class2018101':
        slist = Class2018101.objects.filter(status__lt=9)
    elif strdb == 'Class2018102':
        slist = Class2018102.objects.filter(status__lt=9)
    elif strdb == 'Class2018103':
        slist = Class2018103.objects.filter(status__lt=9)
    elif strdb == 'Class2018104':
        slist = Class2018104.objects.filter(status__lt=9)
    elif strdb == 'Class2018105':
        slist = Class2018105.objects.filter(status__lt=9)
    elif strdb == 'Class2018106':
        slist = Class2018106.objects.filter(status__lt=9)
    elif strdb == 'Class2018107':
        slist = Class2018107.objects.filter(status__lt=9)
    else:
        slist = Class2018108.objects.filter(status__lt=9)

    context = {'studentlist': slist, "classnum": classnum}
    return render(request, 'teacher/qiandao/index.html', context)


def qiandaoregulate(request):
    #发布一次签到将所管理的所有班级status=2，即未签到
    ob = Teacher_Students.objects.filter(tgnum=request.session['gnum']).filter(status=1)
    for s in ob:
        strdb = 'Class' + str(s.classnum)
        if strdb == 'Class2018101':
            slist = Class2018101.objects.filter(status__lt=9)
        elif strdb == 'Class2018102':
            slist = Class2018102.objects.filter(status__lt=9)
        elif strdb == 'Class2018103':
            slist = Class2018103.objects.filter(status__lt=9)
        elif strdb == 'Class2018104':
            slist = Class2018104.objects.filter(status__lt=9)
        elif strdb == 'Class2018105':
            slist = Class2018105.objects.filter(status__lt=9)
        elif strdb == 'Class2018106':
            slist = Class2018106.objects.filter(status__lt=9)
        elif strdb == 'Class2018107':
            slist = Class2018107.objects.filter(status__lt=9)
        else:
            slist = Class2018108.objects.filter(status__lt=9)

        for li in slist:
            li.statusqiandao = 2
            li.save()
    return redirect(reverse('qiandao'))