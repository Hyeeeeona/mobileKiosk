# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class TbShopInfo(models.Model):
    uid = models.CharField(max_length=32)
    shop_id = models.AutoField(primary_key=True)
    shop_name = models.CharField(max_length=32)
    shop_tel = models.CharField(max_length=32)
    shop_address = models.CharField(max_length=128, blank=True)
    business_hours = models.CharField(max_length=32)
    personal_day = models.CharField(max_length=32)
    introduction = models.CharField(max_length=255, blank=True, null=True)
    status = models.IntegerField(default=0)
    shop_img = models.CharField(max_length=255, null=True)

    class Meta:
        db_table = 'TB_SHOP_INFO'


class TbShopMenu(models.Model):
    shop_id = models.ForeignKey(TbShopInfo, models.DO_NOTHING, db_column='shop_id')
    menu_name = models.CharField(max_length=32)
    menu_size = models.CharField(max_length=32, blank=True, null=True)
    hotorcold = models.IntegerField(blank=True, null=True)
    menu_price = models.IntegerField()
    menu_img = models.CharField(max_length=255, null=True)


    class Meta:
        db_table = 'TB_SHOP_MENU'


class TbOrder(models.Model):
    order_id = models.AutoField(primary_key=True)
    order_time = models.DateTimeField()
    name = models.CharField(max_length=10)
    phone_number = models.CharField(max_length=32)
    reservation_time = models.DateTimeField(blank=True, null=True)
    shop_id = models.ForeignKey(TbShopInfo, models.DO_NOTHING, db_column='shop_id', default=1)
    total = models.IntegerField(default=0)
    status = models.IntegerField(default=0)

    class Meta:
        db_table = 'TB_ORDER'


class TbOrderDetail(models.Model):
    order_id = models.IntegerField(default=0)
    menu_name = models.CharField(max_length=32)
    menu_size = models.CharField(max_length=32, blank=True, null=True)
    quantity = models.IntegerField()
    total = models.IntegerField()

    class Meta:
        db_table = 'TB_ORDER_DETAIL'

