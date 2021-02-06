import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './deneme.dart';

class registerPage extends StatefulWidget {
  @override
  _registerPageState createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        'assets/shape.png',
                        width: 170,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      top: 60,
                    ),
                    child: Align(
                      child: Container(
                        alignment: Alignment.topLeft,
                        width: double.infinity,
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Align(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 225,
                      ),
                      child: Container(
                        child: Text(
                          'Username',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          width: 300,
                          child: TextFormField(
                            controller: email,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please Enter Your Email';
                              }

                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter Your Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Align(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 225,
                            ),
                            child: Container(
                              child: Text(
                                'Password',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 300,
                          child: TextFormField(
                            controller: password,
                            obscureText: true,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please Enter Your Password';
                              }

                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter Your Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.blue,
                            disabledColor: Colors.white,
                            splashColor: Colors.blueAccent,
                            onPressed: () {
                              girisYap();
                            },
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'OR sign in with',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            child: FlatButton(
                              color: Colors.white,
                              disabledColor: Colors.white,
                              splashColor: Colors.white,
                              onPressed: () {},
                              child: Image.asset('assets/google.png'),
                            ),
                          ),
                          Container(
                            width: 150,
                            child: FlatButton(
                              color: Colors.white,
                              disabledColor: Colors.white,
                              splashColor: Colors.white,
                              onPressed: () {},
                              child: Image.asset('assets/phoness.png'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void girisYap() {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email.text, password: password.text)
        .then((user) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => Deneme()),
          (Route<dynamic> route) => false);
    });
  }
}
