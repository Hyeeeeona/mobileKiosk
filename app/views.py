from django.shortcuts import render
from rest_framework import viewsets
from app.models import TbShopInfo
from app.serializers import ShopInfoSerializer
from rest_framework.response import Response


class ShopInfoViewSet(viewsets.ModelViewSet):
	queryset = TbShopInfo.objects.all()
	serializer_class = ShopInfoSerializer
	"""
    def list(self, request):
        queryset = TbShopInfo.objects.all()
        serializer = ShopInfoSerializer(queryset)
        return Response(serializer.data)

    def test(self, request):
        queryset = TbShopInfo.objects.all()
        serializer = ShopInfoSerializer(queryset)
        return Response(serializer.data)
	"""