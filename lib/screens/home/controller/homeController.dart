import 'package:get/get.dart';

import '../model/ProductModel.dart';

class homeController extends GetxController
{
  RxList<ProductModel> ProductList = <ProductModel>[
    ProductModel(price: "100",name: "Apple",image: "🍎"),
    ProductModel(price: "150",name: "Kiwi",image: "🥝"),
    ProductModel(price: "160",name: "Pinepple",image: "🍍"),
    ProductModel(price: "120",name: "Watermelon",image: "🍉"),
    ProductModel(price: "200",name: "Stawberry",image: "🍓"),
    ProductModel(price: "190",name: "Grapes",image: "🍇"),
    ProductModel(price: "170",name: "Banana",image: "🍌"),
  ].obs;


  RxList<ProductModel> cartList = <ProductModel>[].obs;
}