from django.shortcuts import render


def system(request):
    return render(request, 'myadmin/system/system.html')
