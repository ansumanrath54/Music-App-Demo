import 'package:carousel_slider/carousel_slider.dart';
import 'package:cws_unpause/main.dart';
import 'package:cws_unpause/ui/albumPage.dart';
import 'package:cws_unpause/ui/artistPage.dart';
import 'package:cws_unpause/ui/myPlaylist.dart';
import 'package:cws_unpause/ui/searchPage.dart';
import 'package:cws_unpause/ui/songPlayerPage/radioPage.dart';
import 'package:cws_unpause/ui/songPlayerPage/songHomePage.dart';
import 'package:cws_unpause/ui/topicHome.dart';
import 'package:cws_unpause/ui/videoPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int tab = 0;
  bool show = false;
  String appBarName = "UnPause";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: back,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      appBarName,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.w700),
                    ),
                    tab == 3
                        ? IconButton(
                            icon: Icon(
                              Icons.settings,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {})
                        : IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SearchPage(),
                                ),
                              );
                            })
                  ],
                ),
              ),
            ),
            // Container(
            //   color: primaryColor.withOpacity(.3),
            //   height: 75,
            //   child: Row(
            //     children: [
            //       CircleAvatar(
            //         backgroundImage: AssetImage("assets/person1.png"),
            //       ),
            //       Text(
            //         "Name of a Song",
            //         style: TextStyle(color: Colors.white),
            //       ),
            //     ],
            //   ),
            // ),
            Expanded(
                child: tab == 0
                    ? homeWidget()
                    : tab == 1
                        ? exploreWidget()
                        : tab == 2
                            ? radioWidget()
                            : accountWidget()),

            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          tab = 0;
                          appBarName = "UnPause";
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.home_outlined,
                            color: tab == 0 ? primaryColor : Colors.grey,
                            size: 30,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                                color: tab == 0 ? primaryColor : Colors.grey),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          tab = 1;
                          appBarName = "Explore";
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.pin_drop_outlined,
                            color: tab == 1 ? primaryColor : Colors.grey,
                            size: 30,
                          ),
                          Text(
                            "Explore",
                            style: TextStyle(
                                color: tab == 1 ? primaryColor : Colors.grey),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          tab = 2;
                          appBarName = "Radio";
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.radio,
                            color: tab == 2 ? primaryColor : Colors.grey,
                            size: 30,
                          ),
                          Text(
                            "Radio",
                            style: TextStyle(
                                color: tab == 2 ? primaryColor : Colors.grey),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          tab = 3;
                          appBarName = "Account";
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.person_outline,
                            color: tab == 3 ? primaryColor : Colors.grey,
                            size: 30,
                          ),
                          Text(
                            "Account",
                            style: TextStyle(
                                color: tab == 3 ? primaryColor : Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  homeWidget() {
    return Column(
      children: [
        Expanded(
            child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "New Albums",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                        Text(
                          "View all",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  CarouselSlider(
                      items: [
                        Stack(
                          children: [
                            Image.asset(
                              "assets/album1.png",
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pray For You",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "The Weekend",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              "assets/album2.png",
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pray For You",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "The Weekend",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              "assets/album3.png",
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pray For You",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "The Weekend",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                      options: CarouselOptions(
                        height: 180,
                        aspectRatio: 1,
                        viewportFraction: 0.45,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      )),
                  SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "UnPause Weekly",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                      padding: const EdgeInsets.all(15),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VideoPage(),
                              ),
                            );
                          },
                          child: Image.asset("assets/player.png"))),
                  SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Recent Music",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                      itemCount: 7,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (_, int index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              show = !show;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(25, 8, 25, 5),
                            child: Row(
                              children: [
                                Text(
                                  "0" + (index + 1).toString(),
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Image.asset(
                                  "assets/album2.png",
                                  height: 50,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Nice For What",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)),
                                      Text("Avinchi John",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14)),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  "assets/dot.png",
                                  height: 20,
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: show
                  ? InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SongHomePage(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        color: primaryColor.withOpacity(.75),
                        height: 75,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage("assets/person1.png"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Name of a Song",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/back.png",
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/play.png",
                                    height: 40,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/next.png",
                                    height: 20,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  : Container(),
            )
          ],
        )),
      ],
    );
  }

  exploreWidget() {
    return Column(
      children: [
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 20, 25, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "UnPause Chart",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.blue.withOpacity(.15),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                    child: ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (_, int index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                show = !show;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(25, 8, 25, 5),
                              child: Row(
                                children: [
                                  Text(
                                    "0" + (index + 1).toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image.asset(
                                    "assets/album2.png",
                                    height: 40,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Nice For What",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16)),
                                        Text("Avinchi John",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12)),
                                        SizedBox(
                                          height: 10,
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/dot.png",
                                    height: 20,
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Top Trending",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CarouselSlider(
                  items: [
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          child: Image.asset(
                            "assets/album1.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pray For You",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "The Weekend",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          child: Image.asset(
                            "assets/album2.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pray For You",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "The Weekend",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          child: Image.asset(
                            "assets/album3.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pray For You",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "The Weekend",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                  options: CarouselOptions(
                    height: 180,
                    aspectRatio: 1,
                    viewportFraction: 0.95,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
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
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    height: tab == 2 ? 4 : 2,
                    width: 15,
                    color: tab == 2 ? Colors.white : Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 20, 25, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Topic",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                child: GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    childAspectRatio: 1.3,
                    physics: NeverScrollableScrollPhysics(),
                    children: List<Widget>.generate(9, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TopicHome(),
                              ),
                            );
                          },
                          child: GridTile(
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image:
                                              AssetImage("assets/topic1.png"),
                                          fit: BoxFit.cover)),
                                  child: new Center(
                                    child: new Text(
                                      'Hip-Hop',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16),
                                    ),
                                  ))),
                        ),
                      );
                    })),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )),
      ],
    );
  }

  radioWidget() {
    return Column(
      children: [
        Expanded(
            child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "UnPause Radio Weekly",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 24),
                        ),
                        Text(
                          "Ring Radio Weekly",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  CarouselSlider(
                      items: [
                        Stack(
                          children: [
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * .7 - 20,
                              child: Image.asset(
                                "assets/album1.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pray For You",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "The Weekend",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * .7 - 20,
                              child: Image.asset(
                                "assets/album2.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pray For You",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "The Weekend",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * .7 - 20,
                              child: Image.asset(
                                "assets/album3.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pray For You",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "The Weekend",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                      options: CarouselOptions(
                        height: 210,
                        aspectRatio: 1,
                        viewportFraction: 0.7,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        scrollDirection: Axis.horizontal,
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Popular",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (_, int index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              show = !show;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(25, 8, 25, 15),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/topic1.png",
                                  height: 70,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("UnPause Radio Weekly",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)),
                                      Text(
                                          "Collection of the best Radio stations of UnPause, constantly updated weekly.",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12.5)),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: show
                  ? InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RadioPage(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        color: primaryColor.withOpacity(.75),
                        height: 75,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage("assets/person2.png"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Radio Name",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/back.png",
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Image.asset(
                                    "assets/play.png",
                                    height: 40,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Image.asset(
                                    "assets/next.png",
                                    height: 20,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  : Container(),
            )
          ],
        )),
      ],
    );
  }

  accountWidget() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/person1.png"),
                ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("22",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700)),
                              Text("Playlist",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700))
                            ],
                          ),
                          Column(
                            children: [
                              Text("360 K",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700)),
                              Text("Follower",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700))
                            ],
                          ),
                          Column(
                            children: [
                              Text("56",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700)),
                              Text("Following",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700))
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        child: RaisedButton(
                          padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                          onPressed: () {},
                          child: Text(
                            "Edit",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: primaryColor,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text("Library",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlaylistPage(),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(
                  Icons.playlist_add_outlined,
                  color: Colors.white,
                  size: 40,
                ),
                title: Text("My Playlist",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700)),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AlbumPage(),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(
                  Icons.album,
                  color: Colors.white,
                  size: 40,
                ),
                title: Text("Album",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700)),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(
                Icons.image,
                color: Colors.white,
                size: 40,
              ),
              title: Text("MV",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700)),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ArtistPage(),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.white,
                  size: 40,
                ),
                title: Text("Artist",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700)),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(
                Icons.download_rounded,
                color: Colors.white,
                size: 40,
              ),
              title: Text("Download",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700)),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 30,
            ),
            Text("Recent Activity",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  itemCount: 8,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/album2.png"),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
