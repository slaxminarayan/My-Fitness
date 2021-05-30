import 'package:flutter/material.dart';

import './WeightGainExcercise.dart';
import './FatLossExcercise.dart';

class ExcerciseVideoShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Excercise'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey.shade100,
          child: Column(
            children: [
              buildCardWidget(
                  context, 'Weight Gain', () => WeightGainExcercise()),
              buildCardWidget(context, 'Fat Loss', () => FatLossExcercise()),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCardWidget(BuildContext context, String value, Function function) {
    return Card(
      elevation: 6,
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.black,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 25,
          ),
          child: Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => function()));
        },
      ),
    );
  }
}
