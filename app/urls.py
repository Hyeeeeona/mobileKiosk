from django.urls import path, include
from . import views
from rest_framework import routers



router = routers.SimpleRouter()
#router.register('shopinfo', shopinfo, 'shopinfo')
#router.register('shopinfo/<int:pk>', shopdetail, 'shopdetail')
router.register(r'shopinfo', views.ShopInfoViewSet)
router.register(r'order', views.OrderInfoViewSet)
router.register(r'orderdetail', views.OrderDetailViewSet)
router.register(r'shopmenu', views.ShopMenuViewSet)

urlpatterns = router.urls