import 'package:flutter/material.dart';

import 'package:telephony/telephony.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FeedbackApp extends StatelessWidget {
  var myController = TextEditingController();

  final Telephony telephony = Telephony.instance;

  bool permissionsGranted;

  void askPermission() async {
    permissionsGranted = await telephony.requestPhoneAndSmsPermissions;
  }

  @override
  Widget build(BuildContext context) {
    askPermission();
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        color: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Text(
                      'Did You like our application? And please give feedback it will help us to improve.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: TextField(
                      controller: myController,
                      maxLines: 3,
                      maxLength: 99,
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Send',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (myController.text.isEmpty) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Alert'),
                                content:
                                    Text('Please Write Something In Feedback'),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text(
                                      'OK',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ],
                              );
                            });
                      } else {
                        final SmsSendStatusListener listener =
                            (SendStatus status) {
                          if (status == SendStatus.SENT) {
                            Fluttertoast.showToast(
                                msg: 'Feedback Send Successfully');
                            Navigator.pop(context);
                          } else if (status == SendStatus.DELIVERED) {
                            Fluttertoast.showToast(
                                msg: 'SMS Delivered Successfully');
                          } else {
                            Fluttertoast.showToast(
                              msg:
                                  'Sorry Unable to send Feedback due to some issue',
                            );
                          }
                        };
                        telephony.sendSms(
                          to: '+91' + '', //TODO:change your contact number here
                          message: 'Feedback From My Fitness Application' +
                              '\n' +
                              myController.text,
                          statusListener: listener,
                        );
                      }
                    }),
              ),
              Text('Also you can reach out with us on'),
              Text(
                'laxminarayannsharma@gmail.com',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
