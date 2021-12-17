import 'package:cws_unpause/main.dart';
import 'package:flutter/material.dart';
import 'package:spotify_sdk/spotify_sdk.dart';


class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {

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
      SpotifySdk.play(spotifyUri: 'spotify:track:3HMMQkT3IMvMBbvxUNPpK3');
      setState(() {
        isPlaying = 'true';
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: back,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/post.png",
                  fit: BoxFit.cover,
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pray For You",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: primaryColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "350 K",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "The Weekend",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  Row(
                    children: [
                      Text(
                        "Show more ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Suggestion",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 22),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ListView.builder(
                              itemCount: 5,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (_, int index) {
                                return InkWell(
                                  onTap: () {},
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/album2.png",
                                          height: 50,
                                          width: 70,
                                          fit: BoxFit.fitWidth,
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
                              }),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Comment",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 22),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage("assets/person1.png"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: TextField(
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                      hintText: "Add your comment",
                                      hintStyle:
                                          TextStyle(color: Colors.white)),
                                ),
                              ),

                            ],
                          ),
                          SizedBox(height: 10,),
                          ListView.builder(
                              itemCount: 3,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (_, int index) {
                                return InkWell(
                                  onTap: () {},
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                    child: Row(
                                      children: [
                                      CircleAvatar(radius: 30, backgroundImage: AssetImage("assets/person4.png"),),

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
                                              Text("Guillerno Raffaele",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18)),
                                              Text("Very Good!",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14)),

                                              Text("I like it so much!",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14)),

                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                       Column(
                                         crossAxisAlignment: CrossAxisAlignment.end,

                                         children: [
                                         Text("2 mins", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                           SizedBox(height: 8,),
                                           Row(children: [
                                             Icon(Icons.thumb_up_alt_outlined, color: index%2==0? Colors.white:primaryColor,),
                                             SizedBox(width: 10,),
                                             Icon(Icons.thumb_down_alt_outlined, color: Colors.white,)
                                           ],)
                                       ],),
                                        SizedBox(
                                          width: 10,
                                        ),

                                      ],
                                    ),
                                  ),
                                );
                              }),
                          SizedBox(height: 20,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Show more ",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.grey,
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
