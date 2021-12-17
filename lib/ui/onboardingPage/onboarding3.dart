import 'package:cws_unpause/main.dart';
import 'package:cws_unpause/ui/onboardingPage/onboarding4.dart';
import 'package:flutter/material.dart';

class OnBoardingThree extends StatefulWidget {
  @override
  _OnBoardingThreeState createState() => _OnBoardingThreeState();
}

class _OnBoardingThreeState extends State<OnBoardingThree> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/person3.png",
                fit: BoxFit.cover,
              )),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 300,),
                Padding(
                  padding: const EdgeInsets.only(left:30.0),
                  child: Text(
                    "APP UI KIT",
                    style: TextStyle(color: primaryColor),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .7,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text("WELCOME TO UNPAUSE APP",

                        style: TextStyle(color: Colors.white, fontSize: 35)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .7,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                        "Make your design workflow easier and save your time",

                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 30),
                  child: Row(

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
                                  builder: (context) => OnBoardingFour(),
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
