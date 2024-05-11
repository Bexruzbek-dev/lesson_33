import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/icons.dart';
import '../../../widgets/support.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class KinoNameInfo extends StatefulWidget {
  const KinoNameInfo({super.key});

  @override
  State<KinoNameInfo> createState() => _KinoNameInfoState();
}

class _KinoNameInfoState extends State<KinoNameInfo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 79, 92, 104),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                padding: const EdgeInsets.all(7),
                alignment: Alignment.topCenter,
                width: double.infinity,
                height: 380,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/avatar.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Avatar:The Way of\nWater",
                          style: GoogleFonts.quicksand(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            ZoomTapAnimation(
                              child: SizedBox(
                                  width: 25,
                                  height: 25,
                                  child: Icon(Icons.bookmark)),
                            ),
                            SizedBox(width: 20),
                            ZoomTapAnimation(
                              child: SizedBox(
                                  width: 25,
                                  height: 25,
                                  child: Icon(Icons.send)),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    IconsWidget(),
                    SizedBox(height: 20),
                    Text(
                      "Genre:Action,Superhero,Science Fiction,Romance,Thriller,...",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur",
                      style: TextStyle(color: Colors.grey.shade400),
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ContactUsers(
                            image: "assets/derector.png",
                            text1: "James\nCameron",
                            text2: "Director",
                          ),
                          SizedBox(width: 20),
                          ContactUsers(
                            image: "assets/derector.png",
                            text1: "James\nCameron",
                            text2: "Director",
                          ),
                          SizedBox(width: 20),
                          ContactUsers(
                            image: "assets/derector.png",
                            text1: "James\nCameron",
                            text2: "Director",
                          ),
                          SizedBox(width: 20),
                          ContactUsers(
                            image: "assets/derector.png",
                            text1: "James\nCameron",
                            text2: "Director",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    const TabBar(
                      dividerColor: Color(0xff565656),
                      dividerHeight: 2,
                      indicatorColor: Color(0xff820FE1),
                      tabs: <Widget>[
                        Tab(
                          child: Text(
                            "Trailers",
                            style: TextStyle(
                                color: Color(0xff820FE1), fontSize: 18),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "More Like",
                            style: TextStyle(
                                color: Color(0xff820FE1), fontSize: 17),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Comment",
                            style: TextStyle(
                                color: Color(0xff820FE1), fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
