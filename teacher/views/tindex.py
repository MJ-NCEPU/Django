from datetime import datetime

from django.shortcuts import render
from django.http import HttpResponse
from django.shortcuts import redirect
from django.urls import reverse
from myadmin.models import Teacher


# Create your views here.

def index(request):
    return render(request, 'teacher/index/index.html')


def register(request):
    return render(request, 'teacher/index/register.html')


def registerdeal(request):
    try:
        ob = Teacher()
        ob.name = request.POST['name']
        ob.gnum = request.POST['gnum']
        ob.position = request.POST['position']
        obs = Teacher.objects.filter(gnum=ob.gnum)
        for obt in obs:
            if str(obt.gnum) == str(ob.gnum):
                context = {"info": '工号已存在！'}
                return render(request, "teacher/index/register.html", context)

        ob.phone = request.POST['phone']
        s1 = request.POST['password']
        s2 = request.POST['repassword']
        if s1 != s2:
            context = {"info": '密码不一致！'}
            return render(request, "teacher/index/register.html", context)

        import hashlib,  random
        md5 = hashlib.md5()
        n = random.randint(100000, 999999)
        s = request.POST['password'] + str(n)  # 从表单中获取密码并添加干扰值
        md5.update(s.encode('utf-8'))  # 将要产生md5的子串放进去
        ob.password_hash = md5.hexdigest()  # 获取md5值
        ob.password_salt = n
        ob.status = 1
        ob.create_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        ob.update_at = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        ob.save()
        return redirect(reverse("teacher_logins"))
    except Exception as err:
        print(err)
        context = {"info": "未知错误"}
    return render(request, "teacher/index/register.html", context)


# 登录表单
def logins(request):
    return render(request, 'teacher/index/logins.html')


# 执行登录
def dologin(request):
    try:
        # 执行验证码的校验
        if request.POST['code'] != request.session['verifycode']:
            context = {"info": "验证码错误！"}
            return render(request, "teacher/index/logins.html", context)
        # 根据登录账号获取登录者信息
        teacher = Teacher.objects.get(gnum=request.POST['gnum'])
        request.session['gnum'] = request.POST['gnum']
        request.session['name'] = teacher.name
        # 判断当前用户是否禁用
        if teacher.status == 1:
            # 判断登录密码是否相同
            import hashlib
            md5 = hashlib.md5()
            s = request.POST['password'] + teacher.password_salt  # 从表单中获取密码并添加干扰值
            md5.update(s.encode('utf-8'))  # 将要产生md5的子串放进去
            # 判断登录密码是否相同
            if teacher.password_hash == md5.hexdigest():
                # 将当前登录成功的用户信息以teacher为key写入到session中
                request.session['teacher'] = teacher.toDict()
                dtime = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
                request.session['dtime'] = dtime
                # 重定向到后台管理首页
                return redirect(reverse("teachers_index"))
            else:
                context = {"info": "登录密码错误！"}
        else:
            context = {"info": "无效的登录账号！"}
    except Exception as err:
        print(err)
        context = {"info": "登录账号不存在"}
    return render(request, "teacher/index/logins.html", context)


# 管理员退出
def logout(request):
    del request.session['teacher']
    del request.session['dtime']
    del request.session['gnum']
    del request.session['name']
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
