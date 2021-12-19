import 'package:cws_unpause/main.dart';
import 'package:cws_unpause/ui/songPlayerPage/song_list.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:spotify_sdk/spotify_sdk.dart';

class SongHomePage extends StatefulWidget {
  int songNo;
  SongHomePage({this.songNo});

  @override
  _SongHomePageState createState() => _SongHomePageState();
}

class _SongHomePageState extends State<SongHomePage> {
  PageController controller = PageController();
  double seeker = 0;
  int tab = 1;
  bool liked = false;
  final String clientId = 'a885f1b35dd44613bcec4d2d72e23ff4';
  final String clientSecret = 'b59fb2ccf4824ecc8fb1bc4ecbea6c0a';
  final String redirectUrl = 'https://open.spotify.com/';
  String isPlaying = 'false';


  Future<void> loadMusic() async {
    await SpotifySdk.connectToSpotifyRemote(clientId: clientId, redirectUrl: redirectUrl);
    var authenticationToken = await SpotifySdk.getAuthenticationToken(
        clientId: clientId, redirectUrl: redirectUrl, scope: "app-remote-control,user-modify-playback-state,playlist-read-private");
    print(authenticationToken);
    if(authenticationToken.isNotEmpty) {
      SpotifySdk.play(spotifyUri: songs[widget.songNo]);
      setState(() {
        isPlaying = 'true';
        //seeker = SpotifySdk.subscribePlayerState()
      });
    }
    else {
      print('Authentication failed');
    }
  }

  @override
  void initState() {
    loadMusic();
    super.initState();
    controller = PageController(
      initialPage: 1,
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
                  lyricsWidget(),
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
              backgroundImage: AssetImage("assets/album3.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text("Come to me",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 35)),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Text("One Republic",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    showMaterialModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) => Container(

                        decoration: BoxDecoration(
                          color: primaryColor.withOpacity(.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(25.0, 35, 25, 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "SHARE TO",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/fb.png",
                                    height: 30,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("Facebook",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600))
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/gplus.png",
                                    height: 30,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("Google +",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600))
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/twitter.png",
                                    height: 30,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("Twitter",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600))
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/share.png",
                                    height: 30,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("Copy Link",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600))
                                ],
                              ),
                              SizedBox(height: 40,)
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    "assets/share.png",
                    height: 25,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Fluttertoast.showToast(msg: "Song Added to Playlist");
                  },
                  child: Image.asset(
                    "assets/menu.png",
                    height: 25,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      liked = !liked;
                    });
                    Fluttertoast.showToast(
                        msg: !liked
                            ? "Song removed from favourites"
                            : "Song added to favourites");
                  },
                  child: Image.asset(
                    "assets/fav.png",
                    height: 25,
                    color: liked ? Colors.red : Colors.white,
                  ),
                ),
                InkWell(
                  onTap: (){
                      showMaterialModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) => Container(

                          decoration: BoxDecoration(
                            color: primaryColor.withOpacity(.5),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(25.0, 35, 25, 20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "DOWNLOAD TO",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Free",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Text(
                                      "128 Kbps",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 30,),
                                    Container(child: Padding(
                                      padding: const EdgeInsets.fromLTRB(8.0,3,8,3),
                                      child: Text("Free", style: TextStyle(color: Colors.white),),
                                    ),color: Colors.green,)
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "VIP account",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Text(
                                      "320 Kbps",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 30,),
                                    Container(child: Padding(
                                      padding: const EdgeInsets.fromLTRB(8.0,3,8,3),
                                      child: Text("VIP", style: TextStyle(color: primaryColor),),
                                    ),color: Colors.yellow,),

                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Text(
                                      "Lossless",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 30,),
                                    Container(child: Padding(
                                      padding: const EdgeInsets.fromLTRB(8.0,3,8,3),
                                      child: Text("VIP", style: TextStyle(color: primaryColor),),
                                    ),color: Colors.yellow,),

                                  ],
                                ),
                              SizedBox(height: 50,)
                              ],
                            ),
                          ),
                        ),
                      );

                  },
                  child: Image.asset(
                    "assets/download.png",
                    height: 25,
                  ),
                ),
              ],
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
                    "0:00",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "4:00",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/shuffle.png",
                    height: 20,
                  ),
                  Image.asset(
                    "assets/back.png",
                    height: 20,
                  ),
                  InkWell(
                    onTap: () async {
                      if(isPlaying == 'true') {
                        await SpotifySdk.pause();
                        setState(() {
                          isPlaying = 'false';
                        });
                      }
                      else {
                        await SpotifySdk.resume();
                        setState(() {
                          isPlaying = 'true';
                        });
                      }
                    },
                    child: isPlaying == 'false' ? Image.asset(
                      "assets/playPink.png",
                      height: 75,
                    ) :
                    Image.asset(
                      "assets/pause.png",
                      height: 75,
                    ),
                  ),
                  Image.asset(
                    "assets/next.png",
                    height: 20,
                  ),
                  Image.asset(
                    "assets/repeat.png",
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  lyricsWidget() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/album3.png",
                  ),
                  fit: BoxFit.cover)),
        ),
        SingleChildScrollView(
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
                Container(
                  child: Text("Lyrics",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 24)),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 30),
                  child: Container(
                    child: Text(
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontSize: 18, height: 1.5)),
                  ),
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
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/shuffle.png",
                        height: 20,
                      ),
                      Image.asset(
                        "assets/back.png",
                        height: 20,
                      ),
                      InkWell(
                        onTap: () async {
                          print(isPlaying);
                          if(isPlaying == 'true') {
                            await SpotifySdk.pause();
                            setState(() {
                              isPlaying = 'false';
                            });
                          }
                          else {
                            await SpotifySdk.resume();
                            setState(() {
                              isPlaying = 'true';
                            });
                          }
                        },
                        child: isPlaying == 'false' ? Image.asset(
                          "assets/playPink.png",
                          height: 75,
                        ) :
                        Image.asset(
                          "assets/pause.png",
                          height: 75,
                        ),
                      ),
                      Image.asset(
                        "assets/next.png",
                        height: 20,
                      ),
                      Image.asset(
                        "assets/repeat.png",
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  suggestionWidget() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/album3.png",
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
                    child: Text("Come to me",
                        style: TextStyle(
                            color: Colors.white, fontSize: 34, height: 1.5)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Shawn Mendes",
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
                Divider(
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Suggestion",
                        style: TextStyle(
                            color: Colors.white, fontSize: 22, height: 1.5)),
                  ),
                ),
                ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (_, int index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(20, 8, 20, 5),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Nice For What",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18)),
                                  Text("Avinchi John",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14)),
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
                      );
                    }),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
