from datetime import datetime

from django.shortcuts import render, redirect
from django.urls import reverse

from teacher.models import Notice
from myadmin.models import Teacher


def notice(request):
    notice = Notice.objects.filter(gnum=request.session['gnum']).order_by('-id')
    context = {'noticelist': notice}
    return render(request, 'teacher/notice/notice.html', context)


def addnotice(request, gnum=0):
    Tea = Teacher.objects.get(gnum=gnum)
    noti = Notice()
    noti.name = Tea.name
    noti.gnum = gnum
    noti.text = request.POST['text']
    noti.create_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    noti.update_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    noti.save()
    return redirect(reverse('notice'))

