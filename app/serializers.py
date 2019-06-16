from rest_framework import serializers
from app.models import TbShopInfo
from app.models import TbOrder
from app.models import TbOrderDetail
from app.models import TbShopMenu


class ShopInfoSerializer(serializers.ModelSerializer):
    class Meta:
        model = TbShopInfo
        fields = '__all__'


class OrderInfoSerializer(serializers.ModelSerializer):
    class Meta:
        model = TbOrder
        fields = '__all__'


class OrderDetailSerializer(serializers.ModelSerializer):
    class Meta:
        model = TbOrderDetail
        fields = '__all__'

class ShopMenuSerializer(serializers.ModelSerializer):
    class Meta:
        model = TbShopMenu
        fields = '__all__'
