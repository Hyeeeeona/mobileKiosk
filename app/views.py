from django.shortcuts import render
from rest_framework import viewsets
from app.models import TbShopInfo
from app.models import TbOrder
from app.models import TbOrderDetail
from app.models import TbShopMenu
from app.serializers import ShopInfoSerializer
from app.serializers import OrderInfoSerializer
from app.serializers import OrderDetailSerializer
from app.serializers import ShopMenuSerializer
from rest_framework.response import Response


class ShopInfoViewSet(viewsets.ModelViewSet):
	queryset = TbShopInfo.objects.all()
	serializer_class = ShopInfoSerializer

class OrderInfoViewSet(viewsets.ModelViewSet):
	queryset = TbOrder.objects.all()
	serializer_class = OrderInfoSerializer

class OrderDetailViewSet(viewsets.ModelViewSet):
	queryset = TbOrderDetail.objects.all()
	serializer_class = OrderDetailSerializer

	def retrieve(self, request, pk=None):
		queryset = TbOrderDetail.objects.filter(order_id=pk)
		serializer = OrderDetailSerializer(queryset, many=True)
		return Response(serializer.data)

class ShopMenuViewSet(viewsets.ModelViewSet):
    queryset = TbShopMenu.objects.all()
    serializer_class = ShopMenuSerializer

    def retrieve(self, request, pk=None):
        queryset = TbShopMenu.objects.filter(shop_id=pk)
        serializer = ShopMenuSerializer(queryset, many=True)
        return Response(serializer.data)


