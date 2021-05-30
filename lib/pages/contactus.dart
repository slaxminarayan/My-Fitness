import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  Card buildContainer(BuildContext context, String value) {
    return Card(
      shape: new RoundedRectangleBorder(
        side: new BorderSide(color: Colors.black.withRed(100), width: 2.0),
        borderRadius: BorderRadius.circular(4.0),
      ),
      elevation: 20,
      margin: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      color: Colors.white38,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.55,
        margin: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ]),
          //
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  value,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        color: Colors.grey.shade50,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Team Members',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'PatrickHand',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              buildContainer(context, 'Laxminarayan Sharma'),
            ],
          ),
        ),
      ),
    );
  }
}
