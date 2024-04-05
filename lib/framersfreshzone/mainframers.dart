import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FramerEx(),
  ));
}

class FramerEx extends StatelessWidget {
  const FramerEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            floating: true,
            pinned: true,
            title: Text("FARMERS FRESH ZONE"),
            bottom: AppBar(
              backgroundColor: Colors.green,
              title: Container(
                width: double.infinity,
                height: 20,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search for Vegetables, fruits...",
                      prefixIcon: Icon(CupertinoIcons.search),
                      suffixIcon: Icon(Icons.shopping_cart)),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 60,
              width: 5,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  itemBuilder: (context,index){
                    return Card(
                    color: Colors.white
                    , child: CircleAvatar(
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(child: Center(child: Text("mango",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold),)))
                        ],),
                    ),
                    );
                  }
              ),
            ),
          ),
        ],
      )),
    );
  }
}
