import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

import './login/authentication_service.dart';

import './pages/contactus.dart';
import './pages/dietplan.dart';
import './pages/feedback.dart';
import './pages/faq.dart';
import './pages/meditation.dart';
import './pages/excercise.dart';

class MyHomeApp extends StatelessWidget {
  Widget cardMenu(BuildContext context, String imgPath, String name) {
    return Card(
      elevation: 5,
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imgPath),
          ),
        ),
        child: Center(
          child: ListTile(
            title: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyFitness'),
        backgroundColor: Colors.amber,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                context.read<AuthenticationService>().signOut();
              }),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  'Welcome',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                accountEmail: Text(
                  context.watch<User>().email.toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    context
                        .watch<User>()
                        .email
                        .toString()
                        .substring(0, 1)
                        .toUpperCase(),
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/back.jpg'),
                  ),
                ),
              ),
            ),
            DetailedMediaPage(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Meditation
            TextButton(
              child: cardMenu(
                  context, 'assets/images/meditation.jpg', 'Meditation'),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Meditation(),
                ),
              ),
            ),
            //Excercide
            TextButton(
              child: cardMenu(
                  context, 'assets/images/bodybuilder.jpg', 'Excercise'),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ExcerciseVideoShow(),
                ),
              ),
            ),
            //Diet Plan
            TextButton(
              child: cardMenu(context, 'assets/images/diet.jpg', 'Diet Plan'),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DietPlan(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailedMediaPage extends StatelessWidget {
  Widget cardMenu(BuildContext context, String imgPath,
      Widget Function() createPage, String name) {
    return Card(
      elevation: 5,
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imgPath),
          ),
        ),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Center(
              child: ListTile(
                title: Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => createPage(),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          //Meditation
          cardMenu(context, 'assets/images/meditation.jpg', () => Meditation(),
              'Meditation'),

          //Excercide
          cardMenu(context, 'assets/images/bodybuilder.jpg',
              () => ExcerciseVideoShow(), 'Excercise'),

          //Diet Plan
          cardMenu(
              context, 'assets/images/diet.jpg', () => DietPlan(), 'Diet Plan'),

          //Contact Us
          cardMenu(context, 'assets/images/contactus.jpg', () => ContactUs(),
              'About Us'),

          //FAQ
          cardMenu(context, 'assets/images/faq.png', () => FAQ(), 'FAQ'),

          //Feedback
          cardMenu(context, 'assets/images/feedback.png', () => FeedbackApp(),
              'Feedback'),
        ],
      ),
    );
  }
}
