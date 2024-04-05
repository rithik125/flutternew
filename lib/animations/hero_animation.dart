import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: HeroMain(),));
}
class HeroMain extends StatelessWidget {
  const HeroMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Haro Main Page"),
        backgroundColor: Colors.lightGreen,
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HeroDetail()));
        },
        child: Hero(
            tag: "ImageHero",
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.purple,
              ),
              height: 200,
              width: 200,
              child: Icon(
                Icons.widgets_outlined,
                size: 40,
                color: Colors.white,
              ),
            )),
      ),
    );
  }
}

class HeroDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hero Details page"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HeroDetail()));
          },
          child: Hero(
              tag: "ImageHero",
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.yellow),
                width: 500,
                height: 500,
                child: Icon(
                  Icons.filter_vintage_outlined,
                  size: 100,
                  color: Colors.red,
                ),
              )),
        ),
      ),
    );
  }
}
