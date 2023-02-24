from django.http import JsonResponse
from django.shortcuts import render, redirect
from django.urls import reverse

from student.models import Mylesson, Student_lesson


def mycollect(request):
    mylessones = Mylesson.objects.all()
    s_l = Student_lesson.objects.filter(snum=request.session['snum']).filter(idstatus=2)
    context = {'mylessones': mylessones, 'student_lesson': s_l}
    return render(request, 'students/mycollect/mycollect.html', context)
    # return render(request, 'students/mycollect/mycollect.html')


def delmycollects(request, myid=0):
    # mylessones = Mylesson.objects.all()
    # s_l = Student_lesson.objects.filter(snum=request.session['snum']).filter(idstatus=2)
    # mylist = []
    # for ob in mylessones:
    #     for osl in s_l:
    #         if ob.id == osl.lessonid:
    #             mylist.append({'id': ob.id, 'cover_pic': ob.cover_pic, 'name': ob.name})
    myles = Student_lesson.objects.filter(snum=request.session['snum']).get(lessonid=myid)
    myles.idstatus = 1
    myles.save()
    return redirect(reverse('mycollect'))
# return JsonResponse({'data': mylist})
