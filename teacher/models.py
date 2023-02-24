from datetime import datetime

from django.db import models


# Create your models here.


# 教师课表信息模型
class Tlessontable(models.Model):
    monday = models.CharField(max_length=255)  # 周一
    tuesday = models.CharField(max_length=255)  # 周二
    wednesday = models.CharField(max_length=255)  # 周三
    thursday = models.CharField(max_length=255)  # 周四
    friday = models.CharField(max_length=255)  # 周五

    class Meta:
        db_table = "tlessontable"  # 更改表名


# 教师备忘录信息模型
class Teacherevent(models.Model):
    text = models.CharField(max_length=255)  # 内容
    create_at = models.DateTimeField(default=datetime.now)  # 创建时间
    update_at = models.DateTimeField(default=datetime.now)  # 修改时间
    gnum = models.IntegerField()  # 获取工号

    def toDict(self):
        return {'id': self.id, 'text': self.text,
                'create_at': self.create_at.strftime('%Y-%m-%d %H:%M:%S'),
                'update_at': self.update_at.strftime('%Y-%m-%d %H:%M:%S'),
                'gnum': self.gnum}

    class Meta:
        db_table = "teacherevent"  # 表名


# 教师——班级 信息模型
class Teacher_Students(models.Model):
    tname = models.CharField(max_length=255)  # 内容
    tgnum = models.IntegerField()  # 工号
    classnum = models.IntegerField()  # 班级
    classmatenum = models.IntegerField()  # 班级
    create_at = models.DateTimeField(default=datetime.now)  # 创建时间
    update_at = models.DateTimeField(default=datetime.now)  # 修改时间
    status = models.IntegerField(default=1)  # 状态

    class Meta:
        db_table = "teacher_student"  # 表名


class Class2018101(models.Model):
    snickname = models.CharField(max_length=255)  # 昵称
    sname = models.CharField(max_length=255)  # 姓名
    sclass = models.IntegerField()  # 班级
    snum = models.IntegerField()  # 学号
    academy = models.CharField(max_length=255)  # 学院
    cover_pic = models.CharField(max_length=255)  # 学院
    status = models.IntegerField(default=1)  # 状态
    statusqiandao = models.IntegerField(default=1)  # 状态
    create_at = models.DateTimeField(default=datetime.now)  # 创建时间
    update_at = models.DateTimeField(default=datetime.now)  # 修改时间
    password_hash = models.CharField(max_length=255)  # 密码
    password_salt = models.CharField(max_length=255)  # 密码干扰值

    def toDict(self):
        return {'id': self.id, 'snickname': self.snickname, 'sname': self.sname, 'sclass': self.sclass,
                'academy': self.academy, 'cover_pic': self.cover_pic, 'status': self.status,
                'password_hash': self.password_hash, 'snum': self.snum,
                'password_salt': self.password_salt,
                'create_at': self.create_at.strftime('%Y-%m-%d %H:%M:%S'),
                'update_at': self.update_at.strftime('%Y-%m-%d %H:%M:%S')}

    class Meta:
        db_table = '2018101'


class Class2018102(models.Model):
    snickname = models.CharField(max_length=255)  # 昵称
    sname = models.CharField(max_length=255)  # 姓名
    sclass = models.IntegerField()  # 班级
    snum = models.IntegerField()  # 学号
    academy = models.CharField(max_length=255)  # 学院
    cover_pic = models.CharField(max_length=255)  # 学院
    status = models.IntegerField(default=1)  # 状态
    statusqiandao = models.IntegerField(default=1)  # 状态
    create_at = models.DateTimeField(default=datetime.now)  # 创建时间
    update_at = models.DateTimeField(default=datetime.now)  # 修改时间
    password_hash = models.CharField(max_length=255)  # 密码
    password_salt = models.CharField(max_length=255)  # 密码干扰值

    def toDict(self):
        return {'id': self.id, 'snickname': self.snickname, 'sname': self.sname, 'sclass': self.sclass,
                'academy': self.academy, 'cover_pic': self.cover_pic, 'status': self.status,
                'password_hash': self.password_hash, 'snum': self.snum,
                'password_salt': self.password_salt,
                'create_at': self.create_at.strftime('%Y-%m-%d %H:%M:%S'),
                'update_at': self.update_at.strftime('%Y-%m-%d %H:%M:%S')}

    class Meta:
        db_table = '2018102'


class Class2018103(models.Model):
    snickname = models.CharField(max_length=255)  # 昵称
    sname = models.CharField(max_length=255)  # 姓名
    sclass = models.IntegerField()  # 班级
    snum = models.IntegerField()  # 学号
    academy = models.CharField(max_length=255)  # 学院
    cover_pic = models.CharField(max_length=255)  # 学院
    status = models.IntegerField(default=1)  # 状态
    statusqiandao = models.IntegerField(default=1)  # 状态
    create_at = models.DateTimeField(default=datetime.now)  # 创建时间
    update_at = models.DateTimeField(default=datetime.now)  # 修改时间
    password_hash = models.CharField(max_length=255)  # 密码
    password_salt = models.CharField(max_length=255)  # 密码干扰值

    def toDict(self):
        return {'id': self.id, 'snickname': self.snickname, 'sname': self.sname, 'sclass': self.sclass,
                'academy': self.academy, 'cover_pic': self.cover_pic, 'status': self.status,
                'password_hash': self.password_hash, 'snum': self.snum,
                'password_salt': self.password_salt,
                'create_at': self.create_at.strftime('%Y-%m-%d %H:%M:%S'),
                'update_at': self.update_at.strftime('%Y-%m-%d %H:%M:%S')}

    class Meta:
        db_table = '2018103'


class Class2018104(models.Model):
    snickname = models.CharField(max_length=255)  # 昵称
    sname = models.CharField(max_length=255)  # 姓名
    sclass = models.IntegerField()  # 班级
    snum = models.IntegerField()  # 学号
    academy = models.CharField(max_length=255)  # 学院
    cover_pic = models.CharField(max_length=255)  # 学院
    status = models.IntegerField(default=1)  # 状态
    statusqiandao = models.IntegerField(default=1)  # 状态
    create_at = models.DateTimeField(default=datetime.now)  # 创建时间
    update_at = models.DateTimeField(default=datetime.now)  # 修改时间
    password_hash = models.CharField(max_length=255)  # 密码
    password_salt = models.CharField(max_length=255)  # 密码干扰值

    def toDict(self):
        return {'id': self.id, 'snickname': self.snickname, 'sname': self.sname, 'sclass': self.sclass,
                'academy': self.academy, 'cover_pic': self.cover_pic, 'status': self.status,
                'password_hash': self.password_hash, 'snum': self.snum,
                'password_salt': self.password_salt,
                'create_at': self.create_at.strftime('%Y-%m-%d %H:%M:%S'),
                'update_at': self.update_at.strftime('%Y-%m-%d %H:%M:%S')}

    class Meta:
        db_table = '2018104'


class Class2018105(models.Model):
    snickname = models.CharField(max_length=255)  # 昵称
    sname = models.CharField(max_length=255)  # 姓名
    sclass = models.IntegerField()  # 班级
    snum = models.IntegerField()  # 学号
    academy = models.CharField(max_length=255)  # 学院
    cover_pic = models.CharField(max_length=255)  # 学院
    status = models.IntegerField(default=1)  # 状态
    statusqiandao = models.IntegerField(default=1)  # 状态
    create_at = models.DateTimeField(default=datetime.now)  # 创建时间
    update_at = models.DateTimeField(default=datetime.now)  # 修改时间
    password_hash = models.CharField(max_length=255)  # 密码
    password_salt = models.CharField(max_length=255)  # 密码干扰值

    def toDict(self):
        return {'id': self.id, 'snickname': self.snickname, 'sname': self.sname, 'sclass': self.sclass,
                'academy': self.academy, 'cover_pic': self.cover_pic, 'status': self.status,
                'password_hash': self.password_hash, 'snum': self.snum,
                'password_salt': self.password_salt,
                'create_at': self.create_at.strftime('%Y-%m-%d %H:%M:%S'),
                'update_at': self.update_at.strftime('%Y-%m-%d %H:%M:%S')}

    class Meta:
        db_table = '2018105'


class Class2018106(models.Model):
    snickname = models.CharField(max_length=255)  # 昵称
    sname = models.CharField(max_length=255)  # 姓名
    sclass = models.IntegerField()  # 班级
    snum = models.IntegerField()  # 学号
    academy = models.CharField(max_length=255)  # 学院
    cover_pic = models.CharField(max_length=255)  # 学院
    status = models.IntegerField(default=1)  # 状态
    statusqiandao = models.IntegerField(default=1)  # 状态
    create_at = models.DateTimeField(default=datetime.now)  # 创建时间
    update_at = models.DateTimeField(default=datetime.now)  # 修改时间
    password_hash = models.CharField(max_length=255)  # 密码
    password_salt = models.CharField(max_length=255)  # 密码干扰值

    def toDict(self):
        return {'id': self.id, 'snickname': self.snickname, 'sname': self.sname, 'sclass': self.sclass,
                'academy': self.academy, 'cover_pic': self.cover_pic, 'status': self.status,
                'password_hash': self.password_hash, 'snum': self.snum,
                'password_salt': self.password_salt,
                'create_at': self.create_at.strftime('%Y-%m-%d %H:%M:%S'),
                'update_at': self.update_at.strftime('%Y-%m-%d %H:%M:%S')}

    class Meta:
        db_table = '2018106'


class Class2018107(models.Model):
    snickname = models.CharField(max_length=255)  # 昵称
    sname = models.CharField(max_length=255)  # 姓名
    sclass = models.IntegerField()  # 班级
    snum = models.IntegerField()  # 学号
    academy = models.CharField(max_length=255)  # 学院
    cover_pic = models.CharField(max_length=255)  # 学院
    status = models.IntegerField(default=1)  # 状态
    statusqiandao = models.IntegerField(default=1)  # 状态
    create_at = models.DateTimeField(default=datetime.now)  # 创建时间
    update_at = models.DateTimeField(default=datetime.now)  # 修改时间
    password_hash = models.CharField(max_length=255)  # 密码
    password_salt = models.CharField(max_length=255)  # 密码干扰值

    def toDict(self):
        return {'id': self.id, 'snickname': self.snickname, 'sname': self.sname, 'sclass': self.sclass,
                'academy': self.academy, 'cover_pic': self.cover_pic, 'status': self.status,
                'password_hash': self.password_hash, 'snum': self.snum,
                'password_salt': self.password_salt,
                'create_at': self.create_at.strftime('%Y-%m-%d %H:%M:%S'),
                'update_at': self.update_at.strftime('%Y-%m-%d %H:%M:%S')}

    class Meta:
        db_table = '2018107'


class Class2018108(models.Model):
    snickname = models.CharField(max_length=255)  # 昵称
    sname = models.CharField(max_length=255)  # 姓名
    sclass = models.IntegerField()  # 班级
    snum = models.IntegerField()  # 学号
    academy = models.CharField(max_length=255)  # 学院
    cover_pic = models.CharField(max_length=255)  # 学院
    status = models.IntegerField(default=1)  # 状态
    statusqiandao = models.IntegerField(default=1)  # 状态
    create_at = models.DateTimeField(default=datetime.now)  # 创建时间
    update_at = models.DateTimeField(default=datetime.now)  # 修改时间
    password_hash = models.CharField(max_length=255)  # 密码
    password_salt = models.CharField(max_length=255)  # 密码干扰值

    def toDict(self):
        return {'id': self.id, 'snickname': self.snickname, 'sname': self.sname, 'sclass': self.sclass,
                'academy': self.academy, 'cover_pic': self.cover_pic, 'status': self.status,
                'password_hash': self.password_hash, 'snum': self.snum,
                'password_salt': self.password_salt,
                'create_at': self.create_at.strftime('%Y-%m-%d %H:%M:%S'),
                'update_at': self.update_at.strftime('%Y-%m-%d %H:%M:%S')}

    class Meta:
        db_table = '2018108'


class Notice(models.Model):
    text = models.CharField(max_length=255)  # 内容
    name = models.CharField(max_length=255)  # 名字
    gnum = models.IntegerField()  # 工号
    create_at = models.DateTimeField(default=datetime.now)  # 创建时间
    update_at = models.DateTimeField(default=datetime.now)  # 修改时间

    class Meta:
        db_table = 'notice'


class Homework(models.Model):
    name = models.CharField(max_length=255)  # 名字
    tgnum = models.IntegerField()  # 工号
    t_name = models.CharField(max_length=255)  # 教师名字

    class Meta:
        db_table = 'homework'


class THomework(models.Model):
    name = models.CharField(max_length=255)  # 名字
    snum = models.IntegerField()  # xue号
    s_name = models.CharField(max_length=255)  # xuesheng名字

    class Meta:
        db_table = 'tijiaohomework'


class Video(models.Model):
    name = models.CharField(max_length=255)  # 名字
    tgnum = models.IntegerField()  # 工号
    t_name = models.CharField(max_length=255)  # 教师名字

    class Meta:
        db_table = 'video'
