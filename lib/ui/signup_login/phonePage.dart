import 'package:cws_unpause/main.dart';
import 'package:cws_unpause/ui/signup_login/signUpPage.dart';
import 'package:cws_unpause/ui/signup_login/verifyPhone.dart';
import 'package:flutter/material.dart';

class PhonePage extends StatefulWidget {
  @override
  _PhonePageState createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Container(
                width: MediaQuery.of(context).size.width*.75,
                child: Text("To continue enter your phone number",
                    style: TextStyle(color: Colors.white, fontSize: 31,fontWeight: FontWeight.w700)),
              ),
              SizedBox(
                height: 100,
              ),
              TextField(
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone_android, color: Colors.white,),
                  hintText: "Phone",

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
                height: 200,
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
                            builder: (context) => VerifyPhone(),
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
