from django.http import HttpResponse

def hello(request):
    return HttpResponse(b"Hello, World! This is a simple Django app.")