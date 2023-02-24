import random
from datetime import datetime
import time
from django.shortcuts import render, redirect
from django.urls import reverse
from teacher.models import Class2018101, Class2018102, Class2018104, Class2018105
from teacher.models import Class2018103, Class2018106, Class2018107, Class2018108
from student.models import Studentevent


def saddevent(request):
    dtime = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    request.session['dtime'] = dtime
    smod = Studentevent.objects.all().order_by('-id')
    context = {'studentevent': smod}
    return render(request, 'students/myself/newaddevent.html', context)


def taddeventcopy(request, snum=0):
    studentadd = Studentevent()
    studentadd.snum = snum
    studentadd.text = request.POST['text']
    studentadd.create_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    studentadd.update_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    studentadd.save()
    return redirect(reverse("myself_addevent_student"))


def myself(request):
    return render(request, 'students/myself/myself.html')


def xiupassword(request, snum=0):
    try:
        s_num = str(snum)
        strs = ''
        i = 0
        for s in s_num:
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
            print('修改成功')
            context = {'info': "修改成功！"}
        else:
            context = {'info': "修改失败！"}
    except Exception as err:
        print(err)
        context = {'info': "修改失败！"}
    return render(request, 'students/info.html', context)


def xiubasicinfo(request, snum=0):
    try:
        s_num = str(snum)
        strs = ''
        i = 0
        for s in s_num:
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

        context = {'studentmyself': ob}
        return render(request, "students/myself/edit.html", context)
    except Exception as err:
        print(err)
        context = {'info': "没有找到要修改的信息！"}
        return render(request, "students/info.html", context)


def xiubasicinfodeit(request, snum=0):
    try:
        # 获取原图片
        oldpicname = request.POST['oldpicname']
        # 图片的上传处理
        myfile = request.FILES.get("cover_pic", None)
        print(myfile)
        if not myfile:
            cover_pic = oldpicname
        else:
            cover_pic = str(time.time()) + "." + myfile.name.split('.').pop()
            destination = open("./static/uploads/student/" + cover_pic, "wb+")
            for chunk in myfile.chunks():  # 分块写入文件
                destination.write(chunk)
            destination.close()

        s_num = str(snum)
        strs = ''
        i = 0
        for s in s_num:
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

        ob.sname = request.POST['sname']
        ob.snickname = request.POST['snickname']
        ob.cover_pic = cover_pic
        # ob.update_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        ob.save()
        del request.session['student']

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

        request.session['student'] = ob.toDict()
        context = {'info': "修改成功！"}
    except Exception as err:
        print(err)
        context = {'info': "修改失败！"}
    return render(request, "students/info.html", context)
