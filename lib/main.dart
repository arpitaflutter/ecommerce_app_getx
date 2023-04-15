import 'package:ecommerce_app_getx/screens/cartScreen/view/cart_screen.dart';
import 'package:ecommerce_app_getx/screens/home/view/home_screen.dart';
import 'package:ecommerce_app_getx/screens/product/view/Product_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(p0) => home_screen(),
        'product':(p0) => Product_screen(),
        'cart':(p0) => cart_screen(),
      },
    ),
  );
}