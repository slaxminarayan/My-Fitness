import 'package:flutter/material.dart';

import '../pages/fat_loss.dart';
import '../pages/immunity.dart';
import '../pages/weight_gain.dart';

class DietPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diet Plan'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        color: Colors.grey.shade100,
        child: Column(
          children: [
            buildCardWidget(context, 'Weight Gain', () => WeightGain()),
            buildCardWidget(context, 'Fat Loss', () => FatLoss()),
            buildCardWidget(context, 'Immunity', () => Immunity()),
          ],
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
