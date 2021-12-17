import 'package:cws_unpause/main.dart';
import 'package:cws_unpause/ui/signup_login/almostDoneScreen.dart';
import 'package:cws_unpause/ui/signup_login/loginPage.dart';
import 'package:cws_unpause/ui/signup_login/phonePage.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                "assets/person5.png",
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
                    child: Text("SIGN UP",
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
                          "assets/user.png",
                          height: 10,
                        ),
                      ),
                      hintText: "Name",
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
                                builder: (context) => AlmostDonePage(),
                              ),
                            );

                          },
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      )),
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
