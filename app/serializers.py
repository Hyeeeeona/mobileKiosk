from rest_framework import serializers
from app.models import TbShopInfo


class ShopInfoSerializer(serializers.ModelSerializer):
    class Meta:
        model = TbShopInfo
        fields = '__all__'