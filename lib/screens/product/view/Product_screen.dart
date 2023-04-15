import 'package:ecommerce_app_getx/screens/home/controller/homeController.dart';
import 'package:ecommerce_app_getx/screens/home/model/ProductModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Product_screen extends StatefulWidget {
  const Product_screen({Key? key}) : super(key: key);

  @override
  State<Product_screen> createState() => _Product_screenState();
}

class _Product_screenState extends State<Product_screen> {
  homeController h1 = Get.put(homeController());

  @override
  Widget build(BuildContext context) {
    int index = Get.arguments;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add to cart", style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.blueGrey.shade700,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text("${h1.ProductList[index].image}",
                            style: TextStyle(fontSize: 55)),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "${h1.ProductList[index].name}",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Rs. ${h1.ProductList[index].price}",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {

                  ProductModel p1 = h1.ProductList[index];
                  h1.cartList.add(p1);
                  Get.back();
                },
                child: Text("Add to cart", style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey, fixedSize: Size(140, 50)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
