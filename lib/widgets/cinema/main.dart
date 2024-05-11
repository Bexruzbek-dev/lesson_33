import 'package:flutter/material.dart';
import 'package:lesson_33/widgets/cinema/page1.dart';
import '../../../widgets/actionbutton.dart';
import '../../../widgets/container.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

void main(List<String> args) {
  runApp(KinoNameInfo());
}

class Cinema extends StatefulWidget {
  const Cinema({super.key});

  @override
  State<Cinema> createState() => _CinemaState();
}

class _CinemaState extends State<Cinema> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff171e25),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Row(
                  children: [
                    Container(
                      width: 320,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 77, 89, 106),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 0.05),
                          const Icon(
                            Icons.search_rounded,
                            color: Color.fromARGB(255, 77, 89, 106),
                          ),
                          Text(
                            " Search something here",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 77, 89, 106),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    ZoomTapAnimation(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 77, 89, 106),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    ZoomTapAnimation(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return const KinoNameInfo();
                            }),
                          );
                        });
                      },
                      child: PhotoContainer(
                        image: "assets/avatar.png",
                        reting: "9.8",
                      ),
                    ),
                    SizedBox(width: 50),
                    ZoomTapAnimation(
                      child: PhotoContainer(
                        image: "assets/fast.png",
                        reting: "9.7",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    ZoomTapAnimation(
                      child: PhotoContainer(
                        image: "assets/avatar.png",
                        reting: "9.8",
                      ),
                    ),
                    SizedBox(width: 50),
                    ZoomTapAnimation(
                      child: PhotoContainer(
                        image: "assets/fast.png",
                        reting: "9.7",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    ZoomTapAnimation(
                      child: PhotoContainer(
                        image: "assets/avatar.png",
                        reting: "9.8",
                      ),
                    ),
                    SizedBox(width: 50),
                    ZoomTapAnimation(
                      child: PhotoContainer(
                        image: "assets/avatar.png",
                        reting: "9.7",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    ZoomTapAnimation(
                      child: PhotoContainer(
                        image: "assets/fast.png",
                        reting: "9.8",
                      ),
                    ),
                    SizedBox(width: 50),
                    ZoomTapAnimation(
                      child: PhotoContainer(
                        image: "assets/avatar.png",
                        reting: "9.7",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    ZoomTapAnimation(
                      child: PhotoContainer(
                        image: "assets/fast.png",
                        reting: "9.8",
                      ),
                    ),
                    SizedBox(width: 50),
                    ZoomTapAnimation(
                      child: PhotoContainer(
                        image: "assets/avatar.png",
                        reting: "9.7",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const ActionButton(),
      ),
    );
  }
}
