from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path, include, re_path
from django.views.generic.base import RedirectView

from server import settings

urlpatterns = [
    re_path(r'^$', RedirectView.as_view(url='/admin/', permanent=False)),  # 重定向到管理后台
    path('admin/', admin.site.urls),
    path('myapp/', include('myapp.urls')),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)