import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home: Staggered_Gridview2(),));
}

class Staggered_Gridview2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered_Gridview2"),
      ),
      body: StaggeredGrid.extent(
        maxCrossAxisExtent: 100,
        children: [
          StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 3,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/melody.jpg"),
                        fit: BoxFit.fill)),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 3,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/melody.jpg"),
                        fit: BoxFit.fill)),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 3,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/melody.jpg"),
                        fit: BoxFit.fill)),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 2,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/melody.jpg"),
                        fit: BoxFit.fill)),
              ))
        ],
      ),
    );
  }
}
