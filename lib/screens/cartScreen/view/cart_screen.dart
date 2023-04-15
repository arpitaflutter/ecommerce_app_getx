import 'package:ecommerce_app_getx/screens/home/controller/homeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class cart_screen extends StatefulWidget {
  const cart_screen({Key? key}) : super(key: key);

  @override
  State<cart_screen> createState() => _cart_screenState();
}

class _cart_screenState extends State<cart_screen> {

  homeController h1 = Get.put(homeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add to cart",style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Obx(
                () => Expanded(
                  child: ListView.builder(itemBuilder: (context, index) {
                    return ListTile(
                      leading: Text("${h1.cartList[index].image}",style: TextStyle(fontSize: 30)),
                      title: Text("${h1.cartList[index].name}",style: TextStyle(fontSize: 20)),
                      subtitle: Text("${h1.cartList[index].price}",style: TextStyle(fontSize: 20)),
                      trailing: IconButton(onPressed: () {
                        h1.cartList.removeAt(index);
                      },
                        icon: Icon(Icons.delete,color: Colors.red,size: 25),
                      ),
                    );
                  },itemCount: h1.cartList.length,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
