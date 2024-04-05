import 'package:flutter/material.dart' hide Badge;
import 'package:flutternew/statemanagement/productListview_GetxUsing/controller/product_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:badges/badges.dart';
import '../../widge/product_list_view.dart';


final ProductController controller = Get.put(ProductController());

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Badge(
            badgeContent: Obx(() => Text(controller.itemCount.value.toString())),
            child: Icon(Icons.shopping_cart),
          ),
          onPressed: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: controller.navigateToCartScreen));
          }),
      appBar: AppBar(title: Text("Item List"),
      ),
      body: ProductListView(),
    );
  }
}
