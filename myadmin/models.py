from datetime import datetime

from django.db import models


# Create your models here.
# 管理员账号信息模型
class User(models.Model):
    name = models.CharField(max_length=255)  # 员工账号
    password = models.CharField(max_length=255)  # 密码
    status = models.IntegerField(default=1)  # 状态:1正常/2禁用

    def toDict(self):
        return {'id': self.id, 'name': self.name,
                'password': self.password, 'status': self.status}

    class Meta:
        db_table = "admin"  # 更改表名


# 管理老师信息模型
class Teacher(models.Model):
    name = models.CharField(max_length=255)  # 姓名
    gnum = models.IntegerField()  # 工号
    phone = models.CharField(max_length=255)  # 电话
    password_hash = models.CharField(max_length=255)  # 密码
    password_salt = models.CharField(max_length=255)  # 密码干扰值
    status = models.IntegerField(default=1)  # 状态:1正常/2禁用
    create_at = models.DateTimeField(default=datetime.now)  # 创建时间
    update_at = models.DateTimeField(default=datetime.now)  # 修改时间
    position = models.CharField(max_length=255)  # 职位

    def toDict(self):
        return {'id': self.id, 'name': self.name, 'gnum': self.gnum, 'password_hash': self.password_hash,
                'phone': self.phone,
                'password_salt': self.password_salt, 'status': self.status,
                'create_at': self.create_at.strftime('%Y-%m-%d %H:%M:%S'),
                'update_at': self.update_at.strftime('%Y-%m-%d %H:%M:%S'),
                'position': self.position}

    class Meta:
        db_table = "teacher"  # 更改表名


# 管理教室信息模型
class Classroom(models.Model):
    build = models.CharField(max_length=255)  # 楼号
    room = models.CharField(max_length=255)  # 教室号
    sitenum = models.IntegerField()  # 座位数
    status = models.IntegerField(default=1)  # 状态:1空闲/2使用
    create_at = models.DateTimeField(default=datetime.now)  # 创建时间
    update_at = models.DateTimeField(default=datetime.now)  # 修改时间

    class Meta:
        db_table = "classroom"  # 更改表名


# 管理书本信息模型
class Book(models.Model):
    bookname = models.CharField(max_length=255)  # 书名
    booknum = models.IntegerField()  # 数量
    status = models.IntegerField(default=1)  # 状态:1正常/2不足
    cover_pic = models.CharField(max_length=255)  # 图片
    create_at = models.DateTimeField(default=datetime.now)  # 创建时间
    update_at = models.DateTimeField(default=datetime.now)  # 修改时间

    class Meta:
        db_table = "book"  # 更改表名


# 物理器材信息模型
class Physics(models.Model):
    pname = models.CharField(max_length=255)  # 名称
    cover_pic = models.CharField(max_length=255)  # 图片
    pnum = models.IntegerField()  # 数量
    status = models.IntegerField(default=1)  # 状态:1正常/2不足
    create_at = models.DateTimeField(default=datetime.now)  # 创建时间
    update_at = models.DateTimeField(default=datetime.now)  # 修改时间

    class Meta:
        db_table = "physics"  # 更改表名


# 管理工资信息模型
class Salary(models.Model):
    tname = models.CharField(max_length=255)  # 教师姓名
    tgnum = models.IntegerField()  # 工号
    basicsalary = models.IntegerField()  # 基本工资
    carsubsidy = models.IntegerField()  # 车贴
    roomsubsidy = models.IntegerField()  # 房贴
    award = models.IntegerField()  # 奖金
    sum = models.IntegerField()  # 总额
    create_at = models.DateTimeField(default=datetime.now)  # 创建时间
    update_at = models.DateTimeField(default=datetime.now)  # 修改时间
    status = models.IntegerField(default=1)  # 状态:1正常/2不足

    class Meta:
        db_table = "salary"  # 更改表名
