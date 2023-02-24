from datetime import datetime

from django.shortcuts import render, redirect
from django.urls import reverse

from myadmin.models import Teacher
from teacher.models import Teacher_Students
from teacher.models import Class2018102, Class2018104, Class2018105, Class2018101
from teacher.models import Class2018103, Class2018106, Class2018107, Class2018108


def addclass(request, tgnum=0):
    request.session['tgnum'] = tgnum
    ob = Teacher_Students.objects.filter(tgnum=tgnum)
    context = {"classlist": ob}
    return render(request, 'teacher/classregulate/addclass.html', context)


def classlist(request, tgnum):
    tsob = Teacher_Students.objects.filter(tgnum=tgnum)
    tsob = tsob.filter(status=1)
    mylist = []
    for ob in tsob:
        mylist.append(ob.classnum)
    context = {"classlist": mylist}
    return render(request, 'teacher/classregulate/classlist.html', context)


def beganadd(request, classnum=0):
    try:
        ob = Teacher_Students()
        ob.tgnum = request.session['tgnum']
        tob = Teacher.objects.get(gnum=ob.tgnum)
        ob.tname = tob.name
        ob.classnum = classnum
        ob.status = 1
        ob.create_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        ob.update_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        ob.save()
        context = {'info': "添加成功！"}
        return render(request, "teacher/info.html", context)
    except Exception as err:
        print(err)
        context = {'info': "添加失败！"}
        return render(request, "teacher/info.html", context)


def beganmin(request, classnum=0):
    try:
        ob = Teacher_Students.objects.filter(classnum=classnum)
        ob = ob.filter(status=1)
        ob = ob.get(tgnum=request.session['tgnum'])
        ob.status = 2
        ob.update_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        ob.save()
        context = {'info': "去除成功！"}
        return render(request, "teacher/info.html", context)
    except Exception as err:
        print(err)
        context = {'info': "去除失败！"}
        return render(request, "teacher/info.html", context)


def index(request, classnum=0):
    request.session['classnum'] = classnum
    strdb = 'Class' + str(classnum)
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

    context = {'studentlist': slist, "classnum": classnum}
    return render(request, 'teacher/classregulate/index.html', context)


def add(request):
    '''加载信息添加表单'''
    return render(request, "teacher/classregulate/add.html")


def insert(request):
    '''执行信息添加'''
    try:
        strdb = 'Class' + str(request.session['classnum'])
        if strdb == 'Class2018101':
            ob = Class2018101()
        elif strdb == 'Class2018102':
            ob = Class2018102()
        elif strdb == 'Class2018103':
            ob = Class2018103()
        elif strdb == 'Class2018104':
            ob = Class2018104()
        elif strdb == 'Class2018105':
            ob = Class2018105()
        elif strdb == 'Class2018106':
            ob = Class2018106()
        elif strdb == 'Class2018107':
            ob = Class2018107()
        else:
            ob = Class2018108()

        ob.snickname = request.POST['snickname']
        ob.sname = request.POST['sname']
        ob.sclass = request.POST['sclass']
        ob.snum = request.POST['snum']
        # 将当前信息的密码做md5处理
        import hashlib, random
        md5 = hashlib.md5()
        n = random.randint(100000, 999999)
        s = request.POST['password'] + str(n)  # 从表单中获取密码并添加干扰值
        md5.update(s.encode('utf-8'))  # 将要产生md5的子串放进去
        ob.password_hash = md5.hexdigest()  # 获取md5值
        ob.academy = '信息工程学院'
        ob.cover_pic = 'default.png'
        ob.password_salt = n
        ob.status = 1
        ob.create_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        ob.update_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        ob.save()
        context = {'info': "添加成功！"}
    except Exception as err:
        print(err)
        context = {'info': "添加失败！"}
    return render(request, "teacher/info.html", context)


def delete(request, sid=0):
    '''执行信息删除'''
    try:
        strdb = 'Class' + str(request.session['classnum'])
        if strdb == 'Class2018101':
            ob = Class2018101.objects.get(id=sid)
        elif strdb == 'Class2018102':
            ob = Class2018102.objects.get(id=sid)
        elif strdb == 'Class2018103':
            ob = Class2018103.objects.get(id=sid)
        elif strdb == 'Class2018104':
            ob = Class2018104.objects.get(id=sid)
        elif strdb == 'Class2018105':
            ob = Class2018105.objects.get(id=sid)
        elif strdb == 'Class2018106':
            ob = Class2018106.objects.get(id=sid)
        elif strdb == 'Class2018107':
            ob = Class2018107.objects.get(id=sid)
        else:
            ob = Class2018108.objects.get(id=sid)

        ob.status = 9
        ob.update_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        ob.save()
        context = {'info': "删除成功！"}
    except Exception as err:
        print(err)
        context = {'info': "删除失败！"}
    return render(request, "teacher/info.html", context)


def edit(request, sid=0):
    '''加载信息编辑表单'''
    try:
        strdb = 'Class' + str(request.session['classnum'])
        if strdb == 'Class2018101':
            ob = Class2018101.objects.get(id=sid)
        elif strdb == 'Class2018102':
            ob = Class2018102.objects.get(id=sid)
        elif strdb == 'Class2018103':
            ob = Class2018103.objects.get(id=sid)
        elif strdb == 'Class2018104':
            ob = Class2018104.objects.get(id=sid)
        elif strdb == 'Class2018105':
            ob = Class2018105.objects.get(id=sid)
        elif strdb == 'Class2018106':
            ob = Class2018106.objects.get(id=sid)
        elif strdb == 'Class2018107':
            ob = Class2018107.objects.get(id=sid)
        else:
            ob = Class2018108.objects.get(id=sid)

        context = {'student': ob}
        return render(request, "teacher/classregulate/edit.html", context)
    except Exception as err:
        print(err)
        context = {'info': "没有找到要修改的信息！"}
        return render(request, "teacher/info.html", context)


def update(request, sid):
    '''执行信息编辑'''
    try:
        strdb = 'Class' + str(request.session['classnum'])
        if strdb == 'Class2018101':
            ob = Class2018101.objects.get(id=sid)
        elif strdb == 'Class2018102':
            ob = Class2018102.objects.get(id=sid)
        elif strdb == 'Class2018103':
            ob = Class2018103.objects.get(id=sid)
        elif strdb == 'Class2018104':
            ob = Class2018104.objects.get(id=sid)
        elif strdb == 'Class2018105':
            ob = Class2018105.objects.get(id=sid)
        elif strdb == 'Class2018106':
            ob = Class2018106.objects.get(id=sid)
        elif strdb == 'Class2018107':
            ob = Class2018107.objects.get(id=sid)
        else:
            ob = Class2018108.objects.get(id=sid)

        ob.snickname = request.POST['snickname']
        ob.sname = request.POST['sname']
        ob.sclass = request.POST['sclass']
        ob.snum = request.POST['snum']
        ob.status = request.POST['status']
        ob.update_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        ob.save()
        context = {'info': "修改成功！"}
        return render(request, "teacher/info.html", context)
    except Exception as err:
        print(err)
        context = {'info': "修改失败！"}
        return render(request, "teacher/info.html", context)


def specify(request, sid=0):
    strdb = 'Class' + str(request.session['classnum'])
    if strdb == 'Class2018101':
        ob = Class2018101.objects.get(id=sid)
    elif strdb == 'Class2018102':
        ob = Class2018102.objects.get(id=sid)
    elif strdb == 'Class2018103':
        ob = Class2018103.objects.get(id=sid)
    elif strdb == 'Class2018104':
        ob = Class2018104.objects.get(id=sid)
    elif strdb == 'Class2018105':
        ob = Class2018105.objects.get(id=sid)
    elif strdb == 'Class2018106':
        ob = Class2018106.objects.get(id=sid)
    elif strdb == 'Class2018107':
        ob = Class2018107.objects.get(id=sid)
    else:
        ob = Class2018108.objects.get(id=sid)

    context = {'studentspecify': ob}
    return render(request, 'teacher/classregulate/studentspecify.html', context)

def stchat(request):
    pass