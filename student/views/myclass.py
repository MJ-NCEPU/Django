from datetime import datetime

from django.shortcuts import render, redirect
from django.urls import reverse

from student.models import Chattable
from teacher.models import Class2018102, Class2018104, Class2018105, Class2018101
from teacher.models import Class2018103, Class2018106, Class2018107, Class2018108


def myclass(request, snum=0):
    s_num = str(snum)
    strs = ''
    i = 0
    for s in s_num:
        if (i <= 6):
            strs = strs + s
            i = i + 1
    strdb = 'Class' + strs
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

    context = {'myclasslist': slist}
    return render(request, 'students/myclass/index.html', context)


def matechat(request, snum=0):
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

    request.session['classmate'] = ob.toDict()
    request.session['classmatesnum'] = snum
    return redirect(reverse('stuzhuanchat'))


def stuzhuanchat(request):
    c1 = request.session['snum']
    c2 = request.session['classmatesnum']
    if int(c1) < int(c2):
        ob = Chattable.objects.filter(client1=c1)
        ob = ob.filter(client2=c2)
    else:
        ob = Chattable.objects.filter(client1=c2)
        ob = ob.filter(client2=c1)
    context = {"chattext": ob}
    return render(request, 'students/myclass/matechat.html', context)


def sendstuzhuanchat(request):
    chattable = Chattable()
    send = request.POST['send']
    receipt = request.POST['receipt']
    if int(send) < int(receipt):
        chattable.client1 = send
        chattable.client2 = receipt
    else:
        chattable.client1 = receipt
        chattable.client2 = send
    chattable.send = send
    chattable.text = request.POST['message']
    chattable.create_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    chattable.update_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    chattable.save()
    return redirect(reverse('stuzhuanchat'))
