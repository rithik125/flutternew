import 'package:flutter/material.dart';
import 'navigation_bar.dart';


class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            width: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              //color: Colors.red,
                borderRadius:
                //BorderRadius.vertical(bottom: Radius.elliptical(100, 100)),
                 BorderRadius.only(bottomLeft: Radius.circular(100),bottomRight: Radius.circular(100)),
                image: DecorationImage(image:
                AssetImage('assets/images/emergencuui.jpg'),
                    //AssetImage('assets/spidu/2023.07.11-01.49-boundingintocomics-64acb524715e0.jpg'),
                    fit: BoxFit.cover
                )
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'EMERGENCY',
            style: TextStyle(
                color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const Text(
            'ASSISTANCE FOR',
            style: TextStyle(
                color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const Text(
            'CUSTOMERS',
            style: TextStyle(
                color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Ninghal Apagadathilo???',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              )),
          const Text('viliku enne!!🦸‍♂️',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              )),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, minimumSize: const Size(300, 60),elevation: 1),
              onPressed: () {
                Navigator.of(context).pushReplacement(PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => const HomePageEUI(),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      const begin = Offset(1.0, 0.0);
                      const end = Offset.zero;
                      const curve = Curves.ease;

                      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                      return SlideTransition(
                        position: animation.drive(tween),
                        child: child,
                      );
                    }));
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Lets get started',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 18,
                    color: Colors.white,
                  )
                ],
              ))
        ],
      ),
    );
  }
}