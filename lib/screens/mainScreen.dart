import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/contactButton.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.white,
                  foregroundImage: NetworkImage('https://picsum.photos/200'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Long',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
          actions: [
            ContactButton(
              buttonText: 'Contact me',
              icon: Icon(Icons.send_sharp),
              onPressed: () {
                print('Hello you');
              },
            )
          ],
        ),
        body: Stack(
          children: [Body()],
        ));
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Opacity(opacity: 0.5, child: Image.asset('headshot.jpg')),
                      Text('I \'m Long, \n A software developer')
                    ],
                  )
                ],
              )),
        ),
        Expanded(
          flex: 3,
          child: Container(color: Colors.yellow),
        )
      ],
    );
  }
}
