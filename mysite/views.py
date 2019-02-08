import datetime
from django.shortcuts import render, redirect
from django.utils import timezone
from django.core.cache import cache
from django.contrib import auth
from django.contrib.contenttypes.models import ContentType
from django.urls import reverse
from django.db.models import Sum
from django.contrib.auth.models import User
from blog.models import Blog
from read_statistics.utils import get_seven_days_read_data

from .forms import LoginForm,RegForm


def get_30_days_hot_blogs():    
    today = timezone.now().date()
    date = today - datetime.timedelta(days=30)
    blogs = Blog.objects \
                .filter(read_details__date__lt=today, read_details__date__gte=date) \
                .values('id', 'title') \
                .annotate(read_num_sum=Sum('read_details__read_num')) \
                .order_by('-read_num_sum')
    return blogs[:7]

def home(request):
    
    blog_content_type = ContentType.objects.get_for_model(Blog)
    dates, read_nums = get_seven_days_read_data(blog_content_type)

    # 获取30天热门博客的缓存数据
    hot_blogs_for_30_days = cache.get('hot_blogs_for_30_days')
    if hot_blogs_for_30_days is None:
        hot_blogs_for_30_days = get_30_days_hot_blogs()
        cache.set('hot_blogs_for_7_days', hot_blogs_for_30_days, 3600)

    context = {}
    context['dates'] = dates
    context['read_nums'] = read_nums
    context['hot_blogs_for_30_days'] = hot_blogs_for_30_days
    context['new_blogs'] = Blog.objects.all()[:7]
    return render(request,'home.html', context)

 


def login(request):
    if request.method =='POST':
        login_form = LoginForm(request.POST)
        if login_form.is_valid():
            user = login_form.cleaned_data['user']
            auth.login(request,user)
            return redirect(request.GET.get('from', reverse('home')))
            
    else:
        login_form = LoginForm()
    context = {}
    context['login_form'] =login_form
    return render(request, 'login.html', context)

def register(request):
    if request.method =='POST':
        reg_form = RegForm(request.POST)
        if reg_form.is_valid():
            username = reg_form.cleaned_data['username']
            email = reg_form.cleaned_data['email']
            password = reg_form.cleaned_data['password']
            #创建用户
            user = User.objects.create_user(username,email,password)
            user.save()
            #登录用户
            user =auth.authenticate(username=username, password=password)
            auth.login(request,user)
            return redirect(request.GET.get('from', reverse('home')))
    else:
        reg_form = RegForm()
    context = {}
    context['reg_form'] =reg_form
    return render(request, 'register.html', context)





