import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: profilepage(),
  ));
}

class profilepage extends StatelessWidget {
  const profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Profile")),
        actions: [
          PopupMenuButton(itemBuilder: (context)=>[])
        ],

      ),
      body: Column(children: [Stack(children: [Image.network("https://burst.shopifycdn.com/photos/city-lights-through-rain-window.jpg?width=1000&format=pjpg&exif=0&iptc=0",height: h/3,)],)],),
      
    );
  }
}
