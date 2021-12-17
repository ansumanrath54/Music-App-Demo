import 'package:cws_unpause/main.dart';
import 'package:cws_unpause/ui/homePage.dart';
import 'package:cws_unpause/ui/signup_login/signUpPage.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyPhone extends StatefulWidget {
  @override
  _VerifyPhoneState createState() => _VerifyPhoneState();
}

class _VerifyPhoneState extends State<VerifyPhone> {
  TextEditingController textEditingController = TextEditingController();

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
                width: MediaQuery.of(context).size.width * .5,
                child: Text("Verify phone number",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w700)),
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: PinCodeTextField(
                  length: 4,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  animationType: AnimationType.fade,
                  hintCharacter: "0",
                  textStyle: TextStyle(color: primaryColor),
                  backgroundColor: Colors.transparent,
                  pinTheme: PinTheme(

                    shape: PinCodeFieldShape.underline,
                    activeColor: primaryColor,

                    fieldHeight: 50,
                    fieldWidth: 40,

                  ),
                  animationDuration: Duration(milliseconds: 300),

                  controller: textEditingController,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                    setState(() {});
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                  appContext: context,
                ),
              ),
              SizedBox(
                height: 100,
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
                        "CONTINUE",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                alignment: Alignment.center,

                child: Text(
                  "Resend code",
                  style: TextStyle(color: primaryColor, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
