import 'package:cws_unpause/main.dart';
import 'package:cws_unpause/ui/songPlayerPage/songHomePage.dart';
import 'package:flutter/material.dart';

class TopicHome extends StatefulWidget {
  @override
  _TopicHomeState createState() => _TopicHomeState();
}

class _TopicHomeState extends State<TopicHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: back,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
                alignment: Alignment.center,
                child: Text(
                  "Hip Hop",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    shrinkWrap: true,
                    childAspectRatio: 1,

                    children: List<Widget>.generate(10, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SongHomePage(),
                              ),
                            );
                          },
                          child: GridTile(
                              child: Stack(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          image: DecorationImage(
                                              image: AssetImage("assets/topic1.png"),
                                              fit: BoxFit.cover)),
                                      child: new Center(
                                        child: new Text(
                                          'Hip-Hop',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16),
                                        ),
                                      )),
                                  Positioned(
                                      right: 10,
                                      bottom: 10,
                                      child: Image.asset("assets/play.png", height: 30,))
                                ],
                              )),
                        ),
                      );
                    })),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
