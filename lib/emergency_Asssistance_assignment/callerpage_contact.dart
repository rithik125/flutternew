import 'package:flutter/material.dart';

import 'contact_map.dart';



class CallerPage extends StatelessWidget {
  const CallerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final contactId = ModalRoute.of(context)?.settings.arguments;
    final contact =
        contacts.firstWhere((element) => element['id'] == contactId);

    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                contact['name'],
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'calling',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 125,
                height: 125,
                child: CircleAvatar(
                  child: Image.asset(contact['image']),
                ),
              ),
              SizedBox(
                height: 280,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                      Text(
                        "Audio",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.volume_up,
                        color: Colors.white,
                      ),
                      Text(
                        "Speaker",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.video_call,
                        color: Colors.white,
                      ),
                      Text(
                        'Video',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.add_call,
                        color: Colors.white,
                      ),
                      Text(
                        "add",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.voice_over_off,
                        color: Colors.white,
                      ),
                      Text(
                        "mute",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.record_voice_over,
                        color: Colors.white,
                      ),
                      Text(
                        'recoding',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20,),
              Container(
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.call_end,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
