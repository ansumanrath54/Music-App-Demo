import 'package:cws_unpause/main.dart';
import 'package:flutter/material.dart';

class PlaylistPage extends StatefulWidget {
  @override
  _PlaylistPageState createState() => _PlaylistPageState();
}

class _PlaylistPageState extends State<PlaylistPage> {
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
                "Playlist",
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
                            itemCount: tab+1,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (_, int index){
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0,8,0,5),
                                    child: Row(
                                      children: [

                                        Image.asset("assets/album2.png", height: 50,),
                                        SizedBox(width: 20,),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("Rulia and Reme",style: TextStyle(color: Colors.white, fontSize: 18)),
                                              Text("Jenny Benny",style: TextStyle(color: Colors.white, fontSize: 14))
                                              , SizedBox(height: 10,)],
                                          ),
                                        ),

                                        SizedBox(width: 10,),
                                      ],
                                    ),
                                  ),

                                ],
                              );

                            }),
                        SizedBox(height: 30,),
                        Container(
                          alignment: Alignment.center,
                          child: RaisedButton(
                            color: primaryColor,
                            onPressed: (){}, child: Text("Add New Playlist", style: TextStyle(color: Colors.white),),),
                        )
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
