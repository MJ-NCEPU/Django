from django.shortcuts import render
from teacher.models import Tlessontable


def table(request):
    ob = Tlessontable.objects.all()
    context = {'lessontable': ob}
    return render(request, 'students/lessontable/lessontable.html', context)
