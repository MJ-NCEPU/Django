from django.contrib import admin
from django.urls import path, include
from myadmin.views import index, system
from myadmin.views import teacher
from myadmin.views import classroom
from myadmin.views import salary
from myadmin.views import book
from myadmin.views import physics

urlpatterns = [
    path('', index.index, name='myadmin_index'),

    # 管理员登录
    path('login', index.login, name='myadmin_login'),  # 加载登录表单
    path('logins', index.logins, name='myadmin_logins'),  # 加载登录表单
    path('dologin', index.dologin, name="myadmin_dologin"),  # 执行登录
    path('logout', index.logout, name="myadmin_logout"),  # 退出
    path('verify', index.verify, name="myadmin_verify"),  # 输出验证码

    # 教师信息管理路由
    path('teacher/<int:pIndex>', teacher.index, name="teacher_index"),  # 浏览
    path('teacher/add', teacher.add, name="teacher_add"),  # 添加表单
    path('teacher/insert', teacher.insert, name="teacher_insert"),  # 执行添加
    path('teacher/del/<int:tid>', teacher.delete, name="teacher_delete"),  # 执行删除
    path('teacher/edit/<int:tid>', teacher.edit, name="teacher_edit"),  # 加载编辑表单
    path('teacher/update/<int:tid>', teacher.update, name="teacher_update"),  # 执行编辑

    # 书本信息管理路由
    path('book/<int:pIndex>', book.index, name="book_index"),  # 浏览
    path('book/add', book.add, name="book_add"),  # 添加表单
    path('book/insert', book.insert, name="book_insert"),  # 执行添加
    path('book/del/<int:bid>', book.delete, name="book_delete"),  # 执行删除
    path('book/edit/<int:bid>', book.edit, name="book_edit"),  # 加载编辑表单
    path('book/update/<int:bid>', book.update, name="book_update"),  # 执行编辑

    # 物理器材信息管理路由
    path('physics/<int:pIndex>', physics.index, name="physics_index"),  # 浏览
    path('physics/add', physics.add, name="physics_add"),  # 添加表单
    path('physics/insert', physics.insert, name="physics_insert"),  # 执行添加
    path('physics/del/<int:pid>', physics.delete, name="physics_delete"),  # 执行删除
    path('physics/edit/<int:pid>', physics.edit, name="physics_edit"),  # 加载编辑表单
    path('physics/update/<int:pid>', physics.update, name="physics_update"),  # 执行编辑

    # 工资信息管理路由
    path('salary/<int:pIndex>', salary.index, name="salary_index"),  # 浏览
    path('salary/add', salary.add, name="salary_add"),  # 添加表单
    path('salary/insert', salary.insert, name="salary_insert"),  # 执行添加
    path('salary/del/<int:sid>', salary.delete, name="salary_delete"),  # 执行删除
    path('salary/edit/<int:sid>', salary.edit, name="salary_edit"),  # 加载编辑表单
    path('salary/update/<int:sid>', salary.update, name="salary_update"),  # 执行编辑

    # 教室信息管理路由
    path('classroom/<int:pIndex>', classroom.index, name="classroom_index"),  # 浏览
    path('classroom/add', classroom.add, name="classroom_add"),  # 添加表单
    path('classroom/insert', classroom.insert, name="classroom_insert"),  # 执行添加
    path('classroom/del/<int:cid>', classroom.delete, name="classroom_delete"),  # 执行删除
    path('classroom/edit/<int:cid>', classroom.edit, name="classroom_edit"),  # 加载编辑表单
    path('classroom/update/<int:cid>', classroom.update, name="classroom_update"),  # 执行编辑

    path('system', system.system, name='system')

]
