from django.shortcuts import render, redirect
from django.urls import reverse

from teacher.models import Class2018101, Class2018102, Class2018104, Class2018105
from teacher.models import Class2018103, Class2018106, Class2018107, Class2018108


def myqiandao(request):
    snum = request.session['snum']
    strs = ''
    i = 0
    for s in str(snum):
        if (i <= 6):
            strs = strs + s
            i = i + 1

    strdb = 'Class' + strs
    if strdb == 'Class2018101':
        ob = Class2018101.objects.get(snum=snum)
    elif strdb == 'Class2018102':
        ob = Class2018102.objects.get(snum=snum)
    elif strdb == 'Class2018103':
        ob = Class2018103.objects.get(snum=snum)
    elif strdb == 'Class2018104':
        ob = Class2018104.objects.get(snum=snum)
    elif strdb == 'Class2018105':
        ob = Class2018105.objects.get(snum=snum)
    elif strdb == 'Class2018106':
        ob = Class2018106.objects.get(snum=snum)
    elif strdb == 'Class2018107':
        ob = Class2018107.objects.get(snum=snum)
    else:
        ob = Class2018108.objects.get(snum=snum)
    context = {'myqiandaolist': ob}
    return render(request, 'students/qiandao/qiandao.html', context)


def quqiandao(request):
    snum = request.session['snum']
    strs = ''
    i = 0
    for s in str(snum):
        if (i <= 6):
            strs = strs + s
            i = i + 1

    strdb = 'Class' + strs
    if strdb == 'Class2018101':
        ob = Class2018101.objects.get(snum=snum)
    elif strdb == 'Class2018102':
        ob = Class2018102.objects.get(snum=snum)
    elif strdb == 'Class2018103':
        ob = Class2018103.objects.get(snum=snum)
    elif strdb == 'Class2018104':
        ob = Class2018104.objects.get(snum=snum)
    elif strdb == 'Class2018105':
        ob = Class2018105.objects.get(snum=snum)
    elif strdb == 'Class2018106':
        ob = Class2018106.objects.get(snum=snum)
    elif strdb == 'Class2018107':
        ob = Class2018107.objects.get(snum=snum)
    else:
        ob = Class2018108.objects.get(snum=snum)
    ob.statusqiandao = 1
    ob.save()
    return redirect(reverse('myqiandao'))
