import 'dart:ffi';

import 'package:get/get.dart';
import '../modellll/product.dart';
class ProductController extends GetxController{
  RxList<product> allProducts = productList.obs;
  bool isIthemListScreen = true;
  bool isCartScreen =false;
  Rx<int>itemCount = 0.obs;
  Rx<double> price = 0.0.obs;

void decrease(int index){
  if(allProducts[index].count>0){
    allProducts[index].count--;
    allProducts.refresh();
    //calculatePrice();
  }
}
  void increase(int index){
    allProducts[index].count++;
    allProducts.refresh();


  }
}

