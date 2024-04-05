import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Sliver(),
  ));
}

class Sliver extends StatelessWidget {
  const Sliver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text("SliverExample"),
            bottom: AppBar(
              title: Container(
                height: 40,
                width: double.infinity,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search Here",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_alt)),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) => Card(
              child: ListTile(
                trailing: Icon(Icons.shopping_cart),
                leading:
                    Image.asset("assets/icons/zoom_glass_magnifier_icon.png"),
                title: Text("product"),
              ),
            ),
            childCount: 15,
          )),
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) => Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset("assets/icons/APPLE.png"),
                        Text(
                          "Apple",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text("\$200kg")
                      ],
                    ),
                  ),
                childCount: 10
              ),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              child: GridView.builder(scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,index)=>
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(child: Image.asset("assets/icons/green lantern.png")),
                        const Text("Login",style: TextStyle(
                          fontSize: 25,fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  )
              ),
            ),
          )
        ],
      )),
    );
  }
}


