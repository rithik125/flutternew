import 'package:flutter/cupertino.dart';
import 'package:flutternew/library_App/widgets/Ex/main.dart';
import 'package:flutternew/statemanagement/productListview_GetxUsing/view/screen/product_list_screen.dart';
import 'package:get/get.dart';

void main()=> runApp(MyApp());
class Myapp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductListScreen(),
    );
  }
}
