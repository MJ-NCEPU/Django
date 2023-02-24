import random
from datetime import datetime

from django.core.paginator import Paginator
from django.shortcuts import render, redirect
from django.urls import reverse

from myadmin.models import Teacher
from teacher.models import Teacherevent


def myself(request):
    return render(request, 'teacher/myself/myself.html')


def xiupassword(request, tgnum=0):
    try:
        ob = Teacher.objects.get(gnum=tgnum)
        import hashlib
        md5 = hashlib.md5()
        s = request.POST['password'] + ob.password_salt  # 从表单中获取密码并添加干扰值
        md5.update(s.encode('utf-8'))  # 将要产生md5的子串放进去
        # 判断登录密码是否相同
        if ob.password_hash == md5.hexdigest():
            md5 = hashlib.md5()
            n = random.randint(100000, 999999)
            s = request.POST['newpassword'] + str(n)  # 从表单中获取密码并添加干扰值
            md5.update(s.encode('utf-8'))  # 将要产生md5的子串放进去
            ob.password_hash = md5.hexdigest()  # 获取md5值
            ob.password_salt = n
            ob.save()
        context = {'info': "修改成功！"}

    except Exception as err:
        print(err)
        context = {'info': "修改失败！"}

    return render(request, 'teacher/info.html', context)


def taddevent(request):
    tmod = Teacherevent.objects.all().order_by('-id')
    context = {'teacherevent': tmod}
    return render(request, 'teacher/myself/newaddevent.html', context)

def taddeventcopy(request, agnum=0):
    # pass
    teateradd = Teacherevent()
    teateradd.gnum = agnum
    teateradd.text = request.POST['text']
    teateradd.create_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    teateradd.update_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    teateradd.save()
    return redirect(reverse("myself_addevent_teacher"))
