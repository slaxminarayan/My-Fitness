import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import './login/authentication_service.dart';
import './controller/form_controller.dart';
import './model/form.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  FeedbackForm feedbackForm;

  void _submitForm() {
    if (_formKey.currentState.validate()) {
      feedbackForm = FeedbackForm(
        nameController.text,
        emailController.text,
        passwordController.text,
      );

      FormController formController = FormController((String res) {
        if (res == FormController.STATUS_SUCESS) {
          Fluttertoast.showToast(msg: 'Feedback Submitted');
        } else {
          Fluttertoast.showToast(msg: 'Error Occured');
        }
      });
      Fluttertoast.showToast(msg: 'Submitting Feedback');

      formController.submitForm(feedbackForm);

      nameController.clear();
      emailController.clear();
      passwordController.clear();
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('MyFitness'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Form(
                  key: _formKey,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        // Name
                        TextFormField(
                          controller: nameController,
                          validator: (val) {
                            if (val.isEmpty) {
                              return 'Enter valid Name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Name',
                            hintText: 'Name',
                            icon: Icon(
                              Icons.info,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        // Email
                        TextFormField(
                          controller: emailController,
                          validator: (val) {
                            if (val.isEmpty) {
                              return 'Enter valid Email Address';
                            }
                            if (!RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(val)) {
                              return 'Enter valid Email Address';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'Email',
                            icon: Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        // Password
                        TextFormField(
                          controller: passwordController,
                          validator: (val) {
                            if (val.isEmpty || val.length < 6) {
                              return 'Enter valid Password';
                            }
                          },
                          enableSuggestions: false,
                          autocorrect: false,
                          obscureText: true,
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Password',
                            icon: Icon(
                              Icons.visibility_off,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 23),
                          child: SizedBox(
                            width: 200,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.brown,
                                shadowColor: Colors.green,
                                elevation: 5,
                              ),
                              onPressed: () async {
                                _formKey.currentState.validate();
                                String x = await context
                                    .read<AuthenticationService>()
                                    .signUp(
                                      email: emailController.text.trim(),
                                      password: passwordController.text.trim(),
                                    );
                                Fluttertoast.showToast(
                                  msg: x,
                                  toastLength: Toast.LENGTH_SHORT,
                                );
                                if (x == 'Signed Up') _submitForm();
                              },
                              child: Text(
                                'Submit',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
