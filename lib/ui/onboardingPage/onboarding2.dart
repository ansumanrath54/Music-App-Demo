import 'package:cws_unpause/main.dart';
import 'package:cws_unpause/ui/onboardingPage/onboarding3.dart';
import 'package:flutter/material.dart';

class OnBoardingTwo extends StatefulWidget {
  @override
  _OnBoardingTwoState createState() => _OnBoardingTwoState();
}

class _OnBoardingTwoState extends State<OnBoardingTwo> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/person2.png",
                fit: BoxFit.cover,
              )),
          SafeArea(
            child: Column(
              children: [
                SizedBox(height: 250,),
                Text(
                  "APP UI KIT",
                  style: TextStyle(color: primaryColor),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .7,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text("WELCOME TO UNPAUSE APP",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 35)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .7,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                        "Make your design workflow easier and save your time",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),
                ),
                SizedBox(height: 100,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
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
                        color: Colors.pink,
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
                              builder: (context) => OnBoardingThree(),
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
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
