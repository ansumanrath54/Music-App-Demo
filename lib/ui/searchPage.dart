import 'package:cws_unpause/main.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController controller= TextEditingController();
  int tab=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: back,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .7,
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
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        controller.clear();
                      });
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                          color: primaryColor, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 60,

              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 30,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        tab=0;
                      });
                    },
                    child: Column(
                      children: [
                        Text("All", style: TextStyle(fontWeight: FontWeight.w600, color: tab==0?Colors.white:Colors.grey, fontSize:tab==0? 22:18),),
                        SizedBox(height: 5,),
                        Container(
                          width: 40,
                          height: tab==0? 2:0,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 30,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        tab=1;
                      });
                    },
                    child: Column(
                      children: [
                        Text("Artist", style: TextStyle(fontWeight: FontWeight.w600,  color: tab==1?Colors.white:Colors.grey, fontSize:tab==1? 22:18),),
                        SizedBox(height: 5,),
                        Container(
                          width: 70,
                          height: tab==1? 2:0,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 30,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        tab=2;
                      });
                    },
                    child: Column(
                      children: [
                        Text("MV", style: TextStyle(fontWeight: FontWeight.w600,  color: tab==2?Colors.white:Colors.grey, fontSize:tab==2? 22:18),),
                        SizedBox(height: 5,),
                        Container(
                          width: 45,
                          height: tab==2? 2:0,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 30,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        tab=3;
                      });
                    },
                    child: Column(
                      children: [
                        Text("Album", style: TextStyle(fontWeight: FontWeight.w600,  color: tab==3?Colors.white:Colors.grey, fontSize:tab==3? 22:18),),
                        SizedBox(height: 5,),
                        Container(
                          width: 80,
                          height: tab==3? 2:0,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 30,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        tab=4;
                      });
                    },
                    child: Column(
                      children: [
                        Text("Song", style: TextStyle(fontWeight: FontWeight.w600,  color: tab==4?Colors.white:Colors.grey, fontSize:tab==4? 22:18),),
                        SizedBox(height: 5,),
                        Container(
                          width: 55,
                          height: tab==4? 2:0,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 30,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        tab=5;
                      });
                    },
                    child: Column(
                      children: [
                        Text("Playlist", style: TextStyle(fontWeight: FontWeight.w600,  color: tab==5?Colors.white:Colors.grey, fontSize:tab==5? 22:18),),
                        SizedBox(height: 5,),
                        Container(
                          width: 80,
                          height:tab==5? 2:0,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 30,),
                ],
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
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Top Searching",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 22),
                      ),
                    ),
                    SizedBox(height: 30,),
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

                    })
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
