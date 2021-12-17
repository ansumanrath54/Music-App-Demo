import 'package:cws_unpause/main.dart';
import 'package:cws_unpause/ui/signup_login/loginPage.dart';
import 'package:cws_unpause/ui/signup_login/signUpPage.dart';
import 'package:flutter/material.dart';

class OnBoardingFour extends StatefulWidget {
  @override
  _OnBoardingFourState createState() => _OnBoardingFourState();
}

class _OnBoardingFourState extends State<OnBoardingFour> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/person4.png",
                fit: BoxFit.cover,
              )),
          SafeArea(
            child: Column(
              children: [
                SizedBox(height: height * .4),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text("UNPAUSE",
                        style: TextStyle(color: Colors.white, fontSize: 35)),
                  ),
                ),
                SizedBox(
                  height: height * .30,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        color: Colors.pink.shade200,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        color: Colors.pink.shade200,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        color: Colors.pink.shade200,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        color: Colors.pink.shade200,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        color: Colors.pink,
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
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
                              builder: (context) => SignUpPage(),
                            ),
                          );
                        },
                        child: Text(
                          "GET STARTED",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
