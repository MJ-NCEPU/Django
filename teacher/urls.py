from django.urls import path

from teacher.views import tindex, lessontable, myself, classregulate, notice, qiandao, homework, video

urlpatterns = [
    path('', tindex.index, name='teachers_index'),

    # 老师登录
    path('register', tindex.register, name='teacher_register'),  # 加载注册表单
    path('registerdeal', tindex.registerdeal, name='teacher_register_deal'),  # 注册处理
    path('logins', tindex.logins, name='teacher_logins'),  # 加载登录表单
    path('dologin', tindex.dologin, name="teacher_dologin"),  # 执行登录
    path('logout', tindex.logout, name="teacher_logout"),  # 退出
    path('verify', tindex.verify, name="teacher_verify"),  # 输出验证码

    # 个人课表
    path('lessontable', lessontable.table, name='lesson_table'),

    # 个人中心
    path('myself', myself.myself, name='myself'),
    path('xiupassword/<int:tgnum>', myself.xiupassword, name='myself_xiupassword'),
    path('taddevent', myself.taddevent, name='myself_addevent_teacher'),
    path('taddeventcopy/<int:agnum>', myself.taddeventcopy, name='myself_addevent_teacher_copy'),

    # 班级管理
    path('addclass/<int:tgnum>', classregulate.addclass, name='addclass'),
    path('classlist/<int:tgnum>', classregulate.classlist, name='classlist'),
    path('beganadd/<int:classnum>', classregulate.beganadd, name='beganadd'),
    path('beganmin/<int:classnum>', classregulate.beganmin, name='beganmin'),

    # 学生信息管理路由
    path('student/<int:classnum>', classregulate.index, name="classregulate_student_index"),  # 浏览
    path('student/add', classregulate.add, name="student_add"),  # 添加表单
    path('student/insert', classregulate.insert, name="student_insert"),  # 执行添加
    path('student/del/<int:sid>', classregulate.delete, name="student_delete"),  # 执行删除
    path('student/edit/<int:sid>', classregulate.edit, name="student_edit"),  # 加载编辑表单
    path('student/update/<int:sid>', classregulate.update, name="student_update"),  # 执行编辑
    path('student/specify/<int:sid>', classregulate.specify, name="student_specify"),  # 执行编辑

    # 发布通知
    path('notice', notice.notice, name='notice'),
    path('addnotice/<int:gnum>', notice.addnotice, name='addnotice'),
    # 发布签到
    path('qiandao', qiandao.qiandao, name='qiandao'),
    path('qiandaoregulate', qiandao.qiandaoregulate, name='qiandaoregulate'),
    path('qiandaoindex/<int:classnum>', qiandao.qiandaoindex, name='qiandaoindex'),

    # 发布作业
    path('homework', homework.homework, name='homework'),
    path('fabuhomework', homework.fabuhomework, name='fabuhomework'),
    path('delhomework/<int:ids>', homework.delhomework, name='delhomework'),
    path("xhomework", homework.xhomework, name='xhomework'),
    # 发布视频
    path('video', video.video, name='video'),
    path('fabuvideo', video.fabuvideo, name='fabuvideo'),
    path('chavideo', video.chavideo, name='chavideo'),
    path('delvideo/<int:ids>', video.delvideo, name='delvideo'),

]
