from django.http import HttpResponse

def hello(request):
    return HttpResponse(b"Hello, Worldasdad! This is a simple Django app.")