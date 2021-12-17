import 'package:cws_unpause/main.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class RadioPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  PageController controller = PageController();
  double seeker = .5;
  int tab = 0;
  bool liked = false;

  @override
  void initState() {
    super.initState();
    controller = PageController(
      initialPage: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: back,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: PageView(
                pageSnapping: true,
                onPageChanged: (val) {
                  setState(() {
                    tab = val;
                  });
                },
                scrollDirection: Axis.horizontal,
                controller: controller,
                children: [

                  homeSongWidget(),
                  suggestionWidget(),
                ],
              ),
            ),
            Positioned(
              top: 40,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: tab == 0 ? 4 : 2,
                    width: 15,
                    color: tab == 0 ? Colors.white : Colors.grey,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    height: tab == 1 ? 4 : 2,
                    width: 15,
                    color: tab == 1 ? Colors.white : Colors.grey,
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  homeSongWidget() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/person5.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text("Boney Radio",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 35)),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Text("UnPauseFM 98Hz",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            SizedBox(
              height: 70,
            ),

            SizedBox(
              height: 20,
            ),
            Slider.adaptive(
                value: seeker,
                onChanged: (val) {
                  setState(() {
                    seeker = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "3:00",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "6:00",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Image.asset(
                    "assets/back.png",
                    height: 20,
                  ),
                  Image.asset(
                    "assets/playPink.png",
                    height: 75,
                  ),
                  Image.asset(
                    "assets/next.png",
                    height: 20,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }



  suggestionWidget() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/person5.png",
                  ),
                  fit: BoxFit.cover)),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Boney Radio",
                        style: TextStyle(
                            color: Colors.white, fontSize: 34, height: 1.5)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("UnPauseFM 98Hz",
                        style: TextStyle(
                            color: Colors.white, fontSize: 18, height: 1.5)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters",
                        style: TextStyle(
                            color: Colors.white, fontSize: 14, height: 1.5)),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(children: [
                    Text("Program", style: TextStyle(color: Colors.white),),
                    SizedBox(width: 100,),
                    Text("Boney Radio", style: TextStyle(color: Colors.white),)
                  ],),

                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(children: [
                    Text("Schedule", style: TextStyle(color: Colors.white),),
                    SizedBox(width: 100,),
                    Text("9 AM- 11AM", style: TextStyle(color: Colors.white),)
                  ],),

                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(children: [
                    Text("Producer", style: TextStyle(color: Colors.white),),
                    SizedBox(width: 100,),
                    Text("Harvard Lawrence", style: TextStyle(color: Colors.white),)
                  ],),

                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(children: [
                    Text("Category", style: TextStyle(color: Colors.white),),
                    SizedBox(width: 100,),
                    Text("R&B", style: TextStyle(color: Colors.white),)
                  ],),

                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
