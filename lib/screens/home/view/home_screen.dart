import 'package:ecommerce_app_getx/screens/home/controller/homeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {

    homeController h1 = Get.put(homeController());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Products Screen",style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blueGrey,
          // centerTitle: true,
          actions: [
            IconButton(onPressed: () {
              Get.toNamed('cart');
            }, icon: Icon(Icons.card_travel_rounded))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Get.toNamed('product',arguments: index);
                    },
                    leading: Text("${h1.ProductList[index].image}",style: TextStyle(fontSize: 30)),
                    title: Text("${h1.ProductList[index].name}",style: TextStyle(fontSize: 20)),
                    subtitle: Text("${h1.ProductList[index].price}",style: TextStyle(fontSize: 20)),
                  );
                },itemCount: h1.ProductList.length,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
