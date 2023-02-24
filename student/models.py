from datetime import datetime

from django.db import models


# Create your models here.

# 学生备忘录信息模型
class Studentevent(models.Model):
    text = models.CharField(max_length=255)  # 内容
    create_at = models.DateTimeField(default=datetime.now)  # 创建时间
    update_at = models.DateTimeField(default=datetime.now)  # 修改时间
    snum = models.IntegerField()  # 获取学号

    def toDict(self):
        return {'id': self.id, 'text': self.text,
                'create_at': self.create_at.strftime('%Y-%m-%d %H:%M:%S'),
                'update_at': self.update_at.strftime('%Y-%m-%d %H:%M:%S'),
                'snum': self.snum}

    class Meta:
        db_table = "studentevent"  # 表名


class Learnbiji(models.Model):
    text = models.CharField(max_length=255)  # 内容
    create_at = models.DateTimeField(default=datetime.now)  # 创建时间
    update_at = models.DateTimeField(default=datetime.now)  # 修改时间
    snum = models.IntegerField()  # 获取学号

    class Meta:
        db_table = "learnbiji"  # 表名


class Mylesson(models.Model):
    name = models.CharField(max_length=255)
    cover_pic = models.CharField(max_length=255)
    status = models.IntegerField(default=1)
    create_at = models.DateTimeField(default=datetime.now)  # 创建时间
    update_at = models.DateTimeField(default=datetime.now)  # 修改时间

    class Meta:
        db_table = 'mylesson'


class Chattable(models.Model):
    send = models.IntegerField()
    client1 = models.IntegerField()
    client2 = models.IntegerField()
    text = models.CharField(max_length=255)
    create_at = models.DateTimeField(default=datetime.now)  # 创建时间
    update_at = models.DateTimeField(default=datetime.now)  # 修改时间

    class Meta:
        db_table = 'chattable'



class Student_lesson(models.Model):
    snum = models.IntegerField()
    lessonid = models.IntegerField()
    idstatus = models.IntegerField()

    class Meta:
        db_table = 'student_lesson'