from django.urls import path, include
from . import views
from rest_framework import routers



router = routers.SimpleRouter()
#router.register('shopinfo', shopinfo, 'shopinfo')
#router.register('shopinfo/<int:pk>', shopdetail, 'shopdetail')
router.register(r'shopinfo', views.ShopInfoViewSet)
urlpatterns = router.urls