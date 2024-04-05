import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MainPageAnim(),
  ));
}

class MainPageAnim extends StatelessWidget {
  const MainPageAnim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MainPage"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: Duration(seconds: 1),
                      pageBuilder: (context, anim1, anim2) {
                        return Second_page_Animation();
                      },
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(0.0, 1.0);
                        const end = Offset.zero;
                        final tween = Tween(begin: begin, end: end);
                        final offsetAnimation = animation.drive(tween);
                        final curveredanimation = CurvedAnimation(
                            parent: animation, curve: Curves.slowMiddle);

                        return SlideTransition(
                          position: tween.animate(curveredanimation),
                          child: child,
                        );
                      },
                    ));
              },
              child: Text("Slide Trensition")),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: () {
            Navigator.push(context, PageRouteBuilder(pageBuilder: (context,a1,a2,){
              return Second_page_Animation();
            },
            transitionDuration: Duration(seconds: 1),
            transitionsBuilder: (context,an1,an2,child){
              return FadeTransition(opacity: an1,child: child,);
            }));
          }, child: Text("fade Trensition")),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Scale Trensition")),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class Second_page_Animation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPageAnim()));
      }, child: Text("Go Back")),),
    );
  }
}
