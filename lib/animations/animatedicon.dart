import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: anime_icon(),));
}

class anime_icon extends StatefulWidget {
  const anime_icon({super.key});

  @override
  State<anime_icon> createState() => _anime_iconState();
}

class _anime_iconState extends State<anime_icon>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: Duration(microseconds: 1000));
    animation =
        Tween<double>(begin: 0.0, end: 1.0).animate(animationController);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () => startAnimation(),
          child: AnimatedIcon(
            icon: AnimatedIcons.arrow_menu,
            progress: animation,
            size: 600,

          ),
        ),
      ),
    );
  }

  void startAnimation() {
    if (animationController.isDismissed) {
      animationController.forward();
    } else {
      animationController.reverse();
    }
  }
}
