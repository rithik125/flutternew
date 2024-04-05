import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Produtewidget extends StatelessWidget {
  final ImageProvider myimage;
  final String name;
  final String price;
  VoidCallback? onclick;
  Color? bgcolor;

  Produtewidget(
      {super.key,
  required this.myimage,
      required this.name,
      required this.price,
      this.onclick,
      this.bgcolor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclick,
      child: Card(
        color: bgcolor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: myimage,
              height: 100,
              width: 100,
            ),
            Text(
              name,
              style:
                  GoogleFonts.habibi(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(price),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {},
                    icon: Icon(Icons.favorite),
                    label: Text(
                      "WishList",
                      style: TextStyle(color: Colors.white),
                    )),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_cart),
                    label: Text(
                      "Add to cart",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
