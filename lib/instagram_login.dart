import 'package:dasturlash_tillari/pizza_page.dart';
import 'package:flutter/material.dart';

import 'cars_page.dart';
import 'home_page.dart';

class InstagramLogin extends StatefulWidget {
  const InstagramLogin({super.key});

  @override
  State<InstagramLogin> createState() => _InstagramLoginState();
}

class _InstagramLoginState extends State<InstagramLogin> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  void saveInput() {
    String email = _email.text.trim().toString();
    String password = _password.text.trim().toString();
    if (email == "hamidyuldoshev@gmail.com" && password == "hamidulloh009")
      (Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
        return CarsPage(image: '',);
      })));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "NeedFood",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 100,
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey)),
                height: 40,
                child: TextField(
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Phone Number or Email ",
                    icon: Icon(Icons.phone),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(

                    border: Border.all(width: 2, color: Colors.grey)),
                height: 40,
                child: TextField(
                  controller: _password,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      icon: Icon(Icons.pattern_sharp),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.black,
                      )),
                ),
              ),
              InkWell(
                onTap: () {
                  saveInput();
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: 40,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
