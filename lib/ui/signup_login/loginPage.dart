import 'package:cws_unpause/main.dart';
import 'package:cws_unpause/ui/homePage.dart';
import 'package:cws_unpause/ui/signup_login/signUpPage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/person2.png",
                fit: BoxFit.cover,
              )),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 20, 30, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  Container(
                    child: Text("SIGN IN",
                        style: TextStyle(color: Colors.white, fontSize: 35)),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 12.0, 12, 12),
                        child: Image.asset(
                          "assets/@.png",
                          height: 10,
                        ),
                      ),
                      hintText: "E-Mail",
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 12.0, 12, 12),
                        child: Image.asset(
                          "assets/lock.png",
                          height: 10,
                        ),
                      ),
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: Colors.white,
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Container(
                      alignment: Alignment.center,
                      child: Container(
                        height: 50,
                        width: double.maxFinite,
                        child: RaisedButton(
                          color: primaryColor,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          child: Text(
                            "SIGN IN",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Container(
                        height: 1,
                        color: Colors.white,
                      )),
                      Text("    Or connect with    ", style: TextStyle(color: Colors.grey.shade400),),
                      Expanded(
                          child: Container(
                        height: 1,
                        color: Colors.white,
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/fb.png",
                        height: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset("assets/gplus.png", height: 50),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset("assets/twitter.png", height: 50),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
