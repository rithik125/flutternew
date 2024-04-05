import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: Stg_Grid(),
  ));
}

class Stg_Grid extends StatelessWidget {
  var ccount = [2, 2, 3, 4, 5, 6];
  var mcount = [3, 4, 5, 6, 7, 8];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(
              ccount.length,
              (index) => StaggeredGridTile.count(
                  crossAxisCellCount: ccount[index],
                  mainAxisCellCount: mcount[index],
                  child: Card(
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset("assets/images/mango.webp"),
                        ),
                        Text("LOGIN ",style: TextStyle(fontSize: 20,),)
                      ],
                    ),
                  ))),
        ),
      ),
    );
  }
}
