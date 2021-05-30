import 'package:flutter/material.dart';

class MeditateShow extends StatelessWidget {
  final String textMethod;
  final String imagePath;
  final String textUpper;
  final String textLower;

  MeditateShow(
      {@required this.textMethod,
      @required this.imagePath,
      @required this.textLower,
      @required this.textUpper});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meditation'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    textMethod.toUpperCase(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                textUpper,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'PatrickHand',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(imagePath),
              SizedBox(
                height: 30,
              ),
              Text(
                textLower,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'PatrickHand',
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
