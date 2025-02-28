import 'package:flutter/material.dart';

import 'instagram_login.dart';

class InstagramSignup extends StatefulWidget {
  const InstagramSignup({super.key});

  @override
  State<InstagramSignup> createState() => _InstagramSignupState();
}



class _InstagramSignupState extends State<InstagramSignup> {

  final _formKey = GlobalKey<FormState>();

  String? email;
  String? password;

  void signUp() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) {
            return InstagramLogin();
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,

      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "Instagram",
                style: TextStyle(fontSize: 50),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                validator: (email) =>
                    !email!.contains("@") ? "Emailda @ belgisi yuq !" : null,
                decoration: InputDecoration(
                    labelText: "Email", icon: Icon(Icons.email)),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                validator: (password) => password!.length >= 8
                    ? null
                    : " xato parol 8 ta belgidan kam bulmasligi kerak",
                decoration: InputDecoration(
                    labelText: "Password", icon: Icon(Icons.pattern_sharp)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    signUp();
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 40,
                        color: Colors.blue,
                        child: Center(
                          child: Text(
                            "Sign in",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Text("shaxsiy hisobingiz bormi !!"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) {
                              return InstagramLogin();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
