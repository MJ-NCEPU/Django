from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.urls import reverse

from teacher.models import Homework, THomework, Teacher_Students


def homework(request):
    myhomew = Homework.objects.filter(tgnum=request.session['gnum'])
    print(myhomew)
    flag = 0
    for a in myhomew:
        flag = 1
        break
    context = {'myhomew': myhomew, 'flag': flag}
    return render(request, 'teacher/homework/homework.html', context)


def xhomework(request):
    xhomew = THomework.objects.all()
    gnum = request.session['gnum']  # 获取教师工号进一步获取班级
    # 获取这个教师所对应的是学生班级
    ob_t = Teacher_Students.objects.filter(tgnum=gnum).filter(status=1)
    flag = 0
    tclassnumlist = []  # 存储学生班级，判断作业文件是否对应
    for s in ob_t:
        tclassnumlist.append(s.classnum)

    sclass = []
    for a in xhomew:
        sclass_str = ''
        i = 0
        for s in str(a.snum):
            if (i <= 6):
                sclass_str = sclass_str + s
                i = i + 1
        if int(sclass_str) in tclassnumlist:
            sclass.append(a)
            flag = 1
    context = {"sclass": sclass, 'flag': flag}
    return render(request, 'teacher/xhomework/xhomework.html', context)


def delhomework(request, ids=0):
    my = Homework.objects.filter(id=ids).delete()
    return redirect(reverse("homework"))


def fabuhomework(request):
    try:
        hw = Homework()
        myfile = request.FILES.get("homework", None)
        if not myfile:
            return HttpResponse("没有封面上传文件信息")
        name = str(myfile)
        hw.name = name
        hw.tgnum = request.session['gnum']
        hw.t_name = request.session['name']
        hw.save()
        destination = open("./static/uploads/homework/" + name, "wb+")
        for chunk in myfile.chunks():  # 分块写入文件
            print(myfile)
            destination.write(chunk)
        destination.close()
        context = {'info': "发布成功！"}
    except Exception as err:
        print(err)
        context = {'info': "发布失败！"}
    return redirect(reverse("homework"))
    # return render(request, "teacher/info.html", context)
