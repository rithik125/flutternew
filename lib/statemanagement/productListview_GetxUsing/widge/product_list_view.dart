import 'package:flutter/material.dart';
import 'package:flutternew/statemanagement/productListview_GetxUsing/controller/product_controller.dart';
import 'package:flutternew/statemanagement/productListview_GetxUsing/modellll/product.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

final ProductController controller = Get.put(ProductController());

class ProductListView extends StatelessWidget {
  const ProductListView();
  Widget countButton(int index, void Function(int index) counter,
      {IconData icon = Icons.add}) {
    return RawMaterialButton(
      onPressed: () {
        counter(index);
      },
      elevation: 2.0,
      fillColor: Colors.white,
      child: Icon(
        icon,
        size: 15,
      ),
      shape: CircleBorder(),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget listViewBody(product item, int index) {
      return GestureDetector(
        onTap: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context){
          //
          // }));
        },
        child: Card(
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Image.asset(
                item.image,
                fit: BoxFit.contain,
                width: 60,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9),
                  ),
                  Text(
                    item.color,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9),
                  ),
                  Text(
                    item.price,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9),
                  )
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  countButton(index, controller.increase),
                  Obx(() =>
                      Text(controller.allProducts[index].count.toString())),
                  countButton(index, controller.decrease, icon: Icons.remove)
                ],
              )
            ],
          ),
        ),
      );
    }

    return ListView.builder(
    padding: EdgeInsets.all(15),
        itemCount:controller.allProducts.length,
        itemBuilder:(context,index){
      product  item = controller.allProducts[index];
      if(controller.isIthemListScreen){
        return listViewBody(item, index);
      }else if (controller.isIthemListScreen && item.count >0){
        return listViewBody(item, index);
      }
        } );
  }
}
