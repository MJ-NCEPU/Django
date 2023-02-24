from datetime import datetime
from django.shortcuts import render
from django.http import HttpResponse
from django.shortcuts import redirect
from django.urls import reverse
from teacher.models import Class2018101, Class2018102, Class2018104, Class2018105
from teacher.models import Class2018103, Class2018106, Class2018107, Class2018108


# Create your views here.

def index(request):
    return render(request, 'students/index/index.html')


def register(request):
    return render(request, 'students/index/register.html')


def registerdeal(request):
    try:
        strdb = 'Class' + str(request.POST['sclass'])
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

        ob.snickname = '暂无昵称'
        ob.sname = request.POST['sname']
        ob.sclass = request.POST['sclass']
        ob.snum = request.POST['snum']
        ob.academy = '信息工程学院'
        ob.status = 1
        ob.cover_pic = 'default.png'

        if strdb == 'Class2018101':
            slist = Class2018101.objects.filter(snum=ob.snum)
        elif strdb == 'Class2018102':
            slist = Class2018102.objects.filter(snum=ob.snum)
        elif strdb == 'Class2018103':
            slist = Class2018103.objects.filter(snum=ob.snum)
        elif strdb == 'Class2018104':
            slist = Class2018104.objects.filter(snum=ob.snum)
        elif strdb == 'Class2018105':
            slist = Class2018105.objects.filter(snum=ob.snum)
        elif strdb == 'Class2018106':
            slist = Class2018106.objects.filter(snum=ob.snum)
        elif strdb == 'Class2018107':
            slist = Class2018107.objects.filter(snum=ob.snum)
        else:
            slist = Class2018108.objects.filter(snum=ob.snum)

        for obt in slist:
            if str(obt.snum) == str(ob.gnum):
                context = {"info": '学号已存在！'}
                return render(request, "students/index/register.html", context)

        s1 = request.POST['password']
        s2 = request.POST['repassword']
        if s1 != s2:
            context = {"info": '密码不一致！'}
            return render(request, "students/index/register.html", context)

        import hashlib, random
        md5 = hashlib.md5()
        n = random.randint(100000, 999999)
        s = request.POST['password'] + str(n)  # 从表单中获取密码并添加干扰值
        md5.update(s.encode('utf-8'))  # 将要产生md5的子串放进去
        ob.password_hash = md5.hexdigest()  # 获取md5值
        ob.password_salt = n
        ob.create_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        ob.update_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        ob.save()
        return redirect(reverse("student_logins"))
    except Exception as err:
        print(err)
        context = {"info": "未知错误"}
    return render(request, "students/index/register.html", context)


# 登录表单
def logins(request):
    return render(request, 'students/index/logins.html')


# 执行登录
def dologin(request):
    try:
        # 执行验证码的校验
        if request.POST['code'] != request.session['verifycode']:
            context = {"info": "验证码错误！"}
            return render(request, "students/index/logins.html", context)
        # 根据登录账号获取登录者信息
        s_num = request.POST['snum']
        request.session['snum'] = s_num
        strs = ''
        i = 0
        for s in s_num:
            if (i <= 6):
                strs = strs + s
                i = i + 1

        strdb = 'Class' + strs
        if strdb == 'Class2018101':
            ob = Class2018101.objects.get(snum=request.POST['snum'])
        elif strdb == 'Class2018102':
            ob = Class2018102.objects.get(snum=request.POST['snum'])
        elif strdb == 'Class2018103':
            ob = Class2018103.objects.get(snum=request.POST['snum'])
        elif strdb == 'Class2018104':
            ob = Class2018104.objects.get(snum=request.POST['snum'])
        elif strdb == 'Class2018105':
            ob = Class2018105.objects.get(snum=request.POST['snum'])
        elif strdb == 'Class2018106':
            ob = Class2018106.objects.get(snum=request.POST['snum'])
        elif strdb == 'Class2018107':
            ob = Class2018107.objects.get(snum=request.POST['snum'])
        else:
            ob = Class2018108.objects.get(snum=request.POST['snum'])

        # 判断当前用户是否禁用
        if ob.status == 1:
            # 判断登录密码是否相同
            import hashlib
            md5 = hashlib.md5()
            s = request.POST['password'] + ob.password_salt  # 从表单中获取密码并添加干扰值
            md5.update(s.encode('utf-8'))  # 将要产生md5的子串放进去
            # 判断登录密码是否相同
            if ob.password_hash == md5.hexdigest():
                # 将当前登录成功的用户信息以teacher为key写入到session中
                request.session['student'] = ob.toDict()
                dtime = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
                request.session['dtime'] = dtime
                # 重定向到后台管理首页
                return redirect(reverse("student_index"))
            else:
                context = {"info": "登录密码错误！"}
        else:
            context = {"info": "无效的登录账号！"}
    except Exception as err:
        print(err)
        context = {"info": "登录账号不存在"}
    return render(request, "students/index/logins.html", context)


# 学生退出
def logout(request):
    del request.session['student']
    del request.session['dtime']
    del request.session['snum']
    return redirect(reverse("myadmin_login"))


# 输出验证码
def verify(request):
    '''生成验证码 '''
    # 引入随机函数模块
    import random
    from PIL import Image, ImageDraw, ImageFont
    # 定义变量，用于画面的背景色、宽、高
    # bgcolor = (random.randrange(20, 100), random.randrange(
    #    20, 100),100)
    bgcolor = (242, 164, 247)
    width = 100
    height = 25
    # 创建画面对象
    im = Image.new('RGB', (width, height), bgcolor)
    # 创建画笔对象
    draw = ImageDraw.Draw(im)
    # 调用画笔的point()函数绘制噪点
    for i in range(0, 100):
        xy = (random.randrange(0, width), random.randrange(0, height))
        fill = (random.randrange(0, 255), 255, random.randrange(0, 255))
        draw.point(xy, fill=fill)
    # 定义验证码的备选值
    # str1 = 'ABCD123EFGHIJK456LMNOPQRS789TUVWXYZ0'
    str1 = '0123456789'
    # 随机选取4个值作为验证码
    rand_str = ''
    for i in range(0, 4):
        rand_str += str1[random.randrange(0, len(str1))]
    # 构造字体对象，ubuntu的字体路径为“/usr/share/fonts/truetype/freefont”
    font = ImageFont.truetype('static/arial.ttf', 21)
    # font = ImageFont.load_default().font
    # 构造字体颜色
    fontcolor = (255, random.randrange(0, 255), random.randrange(0, 255))
    # 绘制4个字
    draw.text((5, -3), rand_str[0], font=font, fill=fontcolor)
    draw.text((25, -3), rand_str[1], font=font, fill=fontcolor)
    draw.text((50, -3), rand_str[2], font=font, fill=fontcolor)
    draw.text((75, -3), rand_str[3], font=font, fill=fontcolor)
    # 释放画笔
    del draw
    # 存入session，用于做进一步验证
    request.session['verifycode'] = rand_str
    """
    python2的为
    # 内存文件操作
    import cStringIO
    buf = cStringIO.StringIO()
    """
    # 内存文件操作-->此方法为python3的
    import io
    buf = io.BytesIO()
    # 将图片保存在内存中，文件类型为png
    im.save(buf, 'png')
    # 将内存中的图片数据返回给客户端，MIME类型为图片png
    return HttpResponse(buf.getvalue(), 'image/png')
