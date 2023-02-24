from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.urls import reverse

from teacher.models import Homework, THomework


def tijiaohomework(request):
    mytjhomew = THomework.objects.filter(snum=request.session['snum'])
    print("mytjhomew:", mytjhomew)
    flag = 0
    for a in mytjhomew:
        flag = 1
        break
    context = {'mytjhomew': mytjhomew, 'flag': flag}
    return render(request, 'students/tijiaohomework/tijiaohomework.html', context)


def deltjhomework(request, ids=0):
    my = THomework.objects.filter(id=ids).delete()
    return redirect(reverse("tijiaohomework"))


def tijiaofabuhomework(request):
    try:
        thw = THomework()
        myfile = request.FILES.get("tijiaohomework", None)
        if not myfile:
            return HttpResponse("没有封面上传文件信息")
        name = str(myfile)
        print("name:", name)
        thw.name = name
        thw.snum = request.session['snum']
        thw.s_name = request.session['snum']
        thw.save()
        destination = open("./static/uploads/tjhomework/" + name, "wb+")
        for chunk in myfile.chunks():  # 分块写入文件
            print(myfile)
            destination.write(chunk)
        destination.close()
        context = {'info': "发布成功！"}
    except Exception as err:
        print(err)
        context = {'info': "发布失败！"}
    return redirect(reverse("tijiaohomework"))
    # return render(request, "teacher/info.html", context)
