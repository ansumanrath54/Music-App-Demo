import 'package:cws_unpause/main.dart';
import 'package:flutter/material.dart';

class AlbumPage extends StatefulWidget {
  @override
  _AlbumPageState createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  TextEditingController controller= TextEditingController();
  int tab=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: back,
      body: SafeArea(
        child: Column(

          children: [
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Album",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(

                child: TextField(
                  controller: controller,
                  textAlignVertical: TextAlignVertical.center,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      suffixIcon: InkWell(

                        onTap: (){
                          setState(() {
                            controller.clear();
                          });
                        },
                        child: Icon(
                          Icons.clear,
                          color: Colors.white,
                        ),
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Colors.grey),
                ),
              ),
            ),

            Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 10, 25, 0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [


                        ListView.builder(
                            itemCount: 6,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (_, int index){
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0,8,0,5),
                                    child: Row(
                                      children: [
                                        Text(
                                          "0" + (index + 1).toString(),
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Image.asset("assets/album2.png", height: 50,),
                                        SizedBox(width: 20,),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("Nice For What",style: TextStyle(color: Colors.white, fontSize: 18)),
                                              Text("Avinchi John",style: TextStyle(color: Colors.white, fontSize: 14))
                                              , SizedBox(height: 10,)],
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Image.asset("assets/dot.png", height: 20,
                                          width: 20,),
                                        SizedBox(width: 10,),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:70),
                                    child: Divider(
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              );

                            }),
                        SizedBox(height: 30,),

                      ],
                    ),
                  ),
                )),

          ],
        ),
      ),
    );
  }
}
