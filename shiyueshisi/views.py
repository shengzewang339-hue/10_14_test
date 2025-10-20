from django.http import HttpResponse

def hello(request):
    return HttpResponse(b"Hello, World00000! This is a simple Django app.")