from django.shortcuts import render


def videolearn(request):
    return render(request, 'students/videolearn/video.html')

def zhuye(request):
    return render(request, 'students/videolearn/video.html')

def history(request):
    return render(request, 'students/videolearn/History_Page.html')


def singlevideo(request):
    image = request.POST['image']
    videoimage = request.POST['videoimage']
    name = request.POST['name']
    namemulu = request.POST['namemulu']
    context = {'image': image, 'videoimage': videoimage, 'name': name, 'namemulu': namemulu}
    return render(request, 'students/videolearn/single_video_page.html', context)


def uploadvideo(request):
    return render(request, 'students/videolearn/Upload_Video.html')


def jisuanji(request):
    return render(request, 'students/videolearn/video_jisuanji.html')


def english(request):
    return render(request, 'students/videolearn/video_english.html')


def math(request):
    return render(request, 'students/videolearn/video_math.html')
