import 'package:cws_unpause/main.dart';
import 'package:cws_unpause/ui/signup_login/phonePage.dart';
import 'package:cws_unpause/ui/signup_login/signUpPage.dart';
import 'package:cws_unpause/ui/signup_login/verifyPhone.dart';
import 'package:flutter/material.dart';

class AlmostDonePage extends StatefulWidget {
  @override
  _AlmostDonePageState createState() => _AlmostDonePageState();
}

class _AlmostDonePageState extends State<AlmostDonePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: back,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 20, 30, 0),
          child: Column(

            children: [
              SizedBox(height: 200),
              Container(

                child: Text("Almost done!",
                    style: TextStyle(color: Colors.white, fontSize: 31,fontWeight: FontWeight.w700)),
              ),
              SizedBox(height: 20),
              Container(

                child: Text("Please Verify your Phone",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
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
                            builder: (context) => PhonePage(),
                          ),
                        );
                      },
                      child: Text(
                        "CONTINUE",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
