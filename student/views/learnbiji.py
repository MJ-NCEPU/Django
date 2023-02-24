from datetime import datetime

from django.shortcuts import render, redirect
from django.urls import reverse

from student.models import Learnbiji


def learnbiji(request):
    return render(request, 'students/learnbiji/learnbiji.html')


def savebiji(request):
    biji = Learnbiji()
    biji.snum = request.session['snum']
    biji.text = request.POST['text']
    biji.create_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    biji.update_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    biji.save()
    return redirect(reverse('learnbiji'))


def morebiji(request):
    more = Learnbiji.objects.filter(snum=request.session['snum']).order_by('-id')
    context = {'morebijilist': more}
    return render(request, 'students/learnbiji/morebiji.html', context)
