from student.views import sindex, classroomstatus, myclass, learnbiji, mynotice, qiandao, myhomework, mylesson, \
    mycollect, videolearn, myvideo, tijiaohomework
from django.urls import path
from student.views import lessontable, myself

urlpatterns = [
    path('', sindex.index, name='student_index'),

    # 学生登录
    path('register', sindex.register, name='student_register'),  # 加载注册表单
    path('registerdeal', sindex.registerdeal, name='student_register_deal'),  # 注册表单
    path('logins', sindex.logins, name='student_logins'),  # 加载登录表单
    path('dologin', sindex.dologin, name="student_dologin"),  # 执行登录
    path('logout', sindex.logout, name="student_logout"),  # 退出
    path('verify', sindex.verify, name="student_verify"),  # 输出验证码

    # 个人课表
    path('lessontable', lessontable.table, name='student_lesson_table'),  # 加载课表
    # 个人中心
    path('saddevent', myself.saddevent, name='myself_addevent_student'),  # 加载添加事件
    path('taddeventcopy/<int:snum>', myself.taddeventcopy, name='myself_addevent_student_copy'),  # 执行添加事件
    path('myself', myself.myself, name='studentmyself'),
    path('xiupassword/<int:snum>', myself.xiupassword, name='myself_student_xiupassword'),
    path('xiubasicinfo/<int:snum>', myself.xiubasicinfo, name='myself_student_xiubasicinfo'),
    path('xiubasicinfoedit/<int:snum>', myself.xiubasicinfodeit, name='myself_student_xiubasicinfoedit'),

    # 教室状态
    path('classroomstatus/<int:pIndex>', classroomstatus.classroomstatus, name='classroomstatus'),

    # 我的班级
    path('myclass/<int:snum>', myclass.myclass, name='myclass'),
    path('matechat/<int:snum>', myclass.matechat, name='matechat'),
    path('stuzhuanchat', myclass.stuzhuanchat, name='stuzhuanchat'),
    path('sendstuzhuanchat', myclass.sendstuzhuanchat, name='sendstuzhuanchat'),

    # 学习笔记
    path('learnbiji', learnbiji.learnbiji, name='learnbiji'),
    path('savebiji', learnbiji.savebiji, name='savebiji'),
    path('morebiji', learnbiji.morebiji, name='morebiji'),

    # 消息通知
    path('mynotice/<int:sclass>', mynotice.mynotice, name='mynotice'),
    # 我的签到
    path('myqiandao', qiandao.myqiandao, name='myqiandao'),
    path('quqiandao', qiandao.quqiandao, name='quqiandao'),
    # 我的作业
    path('myhomework', myhomework.myhomework, name='myhomework'),

    # tijiaozuoye
    path('tijiaohomework', tijiaohomework.tijiaohomework, name='tijiaohomework'),
    path('tijiaofabuhomework', tijiaohomework.tijiaofabuhomework, name='tijiaofabuhomework'),
    path('deltjhomework/<int:ids>', tijiaohomework.deltjhomework, name='deltjhomework'),

    # 我的视频
    path('myvideo', myvideo.myvideo, name='myvideo'),
    # 我的课程
    path('mylesson', mylesson.mylesson, name='mylesson'),
    path('zhuanmylesson', mylesson.zhuanmylesson, name='zhuanmylesson'),
    path('addmycollect/<int:myid>', mylesson.addmycollect, name='addmycollect'),
    path('delmycollect/<int:myid>', mylesson.delmycollect, name='delmycollect'),
    path('inlesson/<int:myid>', mylesson.inlesson, name='inlesson'),
    path('inlessontask', mylesson.inlessontask, name='inlessontask'),
    path('inlessonzhang', mylesson.inlessonzhang, name='inlessonzhang'),
    path('inlessonhomework', mylesson.inlessonhomework, name='inlessonhomework'),
    path('inlessontalk', mylesson.inlessontalk, name='inlessontalk'),
    path('biji', mylesson.biji, name='biji'),
    path('knowledge', mylesson.knowledge, name='knowledge'),

    # 我的收藏
    path('mycollect', mycollect.mycollect, name='mycollect'),
    path('delmycollects/<int:myid>', mycollect.delmycollects, name='delmycollects'),
    # 视频学习
    path('videolearn', videolearn.videolearn, name='videolearn'),
    path('zhuye', videolearn.zhuye, name='zhuye'),
    path('history', videolearn.history, name='history'),
    path('singlevideo', videolearn.singlevideo, name='singlevideo'),
    path('uploadvideo', videolearn.uploadvideo, name='uploadvideo'),
    path('jisuanji', videolearn.jisuanji, name='jisuanji'),
    path('english', videolearn.english, name='english'),
    path('math', videolearn.math, name='math'),
]
