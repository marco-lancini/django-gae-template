from django.conf.urls.defaults import *

from django.contrib import admin
admin.autodiscover()


urlpatterns = patterns('',
    ('^_ah/warmup$', 'djangoappengine.views.warmup'),

    # TODO
    ('^$', 'django.views.generic.simple.direct_to_template', {'template': 'home.html'}),

    # Auth & Homepage
    # url(r'', include('app_auth.urls')),

    # Admin
    url(r'^admin/', include(admin.site.urls)),

    # Serve static content
    (r'^static/(?P<path>.*)$', 'django.views.static.serve', {'document_root': 'static'}),
)


#=========================================================================
# Serve MEDIA
#=========================================================================
# http://www.muhuk.com/2009/05/25/serving-static-media-in-django-development-server.html
# import settings
# from django.views.static import serve
# _media_url = settings.MEDIA_URL
# _media_url = _media_url[1:]
# urlpatterns += patterns('',
#     (r'^%s(?P<path>.*)$' % _media_url, serve, {'document_root': settings.MEDIA_ROOT}))
# del(_media_url, serve)
