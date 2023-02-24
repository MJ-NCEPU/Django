from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.urls import reverse

from teacher.models import Video


def video(request):
    myvideo = Video.objects.filter(tgnum=request.session['gnum'])
    flag = 0
    for a in myvideo:
        flag = 1
        break
    context = {'myvideo': myvideo, 'flag': flag}
    return render(request, 'teacher/video/video.html', context)


def delvideo(request, ids=0):
    my = Video.objects.filter(id=ids).delete()
    return redirect(reverse("video"))


def fabuvideo(request):
    try:
        hw = Video()
        myfile = request.FILES.get("video", None)
        if not myfile:
            return HttpResponse("没有封面上传文件信息")
        name = str(myfile)
        hw.name = name
        hw.tgnum = request.session['gnum']
        hw.t_name = request.session['name']
        hw.save()
        destination = open("./static/uploads/video/" + name, "wb+")
        for chunk in myfile.chunks():  # 分块写入文件
            print(myfile)
            destination.write(chunk)
        destination.close()
        context = {'info': "发布成功！"}
    except Exception as err:
        print(err)
        context = {'info': "发布失败！"}
    return redirect(reverse("video"))
    # return render(request, "teacher/info.html", context)


def chavideo(request):
    videoname = request.POST['videoname']
    context = {'videoname': videoname}
    return render(request, 'teacher/video/single_video.html', context)
