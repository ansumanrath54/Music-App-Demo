import 'package:cws_unpause/main.dart';
import 'package:cws_unpause/ui/onboardingPage/onboarding2.dart';
import 'package:flutter/material.dart';

class OnBoardingOne extends StatefulWidget {
  @override
  _OnBoardingOneState createState() => _OnBoardingOneState();
}

class _OnBoardingOneState extends State<OnBoardingOne> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: back,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height * .5,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  padding: EdgeInsets.all(0),
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (_, int index) {
                    return Container(
                      margin: EdgeInsets.only(left: 20),
                      height: height * .5,
                      width: MediaQuery.of(context).size.width * .8,
                      child: Image.asset("assets/person1.png"),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
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
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
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
                padding: const EdgeInsets.only(left: 20.0),
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
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                    "Make your design workflow easier and save your time",
                    style: TextStyle(color: Colors.white, fontSize: 15)),
              ),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left:20, right: 20),
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
                          builder: (context) => OnBoardingTwo(),
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
    );
  }
}
