import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';



class IconsWidget extends StatelessWidget {
  const IconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(
              Icons.star_half_sharp,
              color: Colors.deepPurple,
            ),
            SizedBox(width: 8),
            const Text("9.8", style: TextStyle(color: Colors.deepPurple)),
            SizedBox(width: 8),
            Text("2022", style: TextStyle(color: Colors.grey.shade400)),
            SizedBox(width: 8),
            ZoomTapAnimation(
              child: Container(
                padding: const EdgeInsets.only(left: 6, right: 6),
                height: 23,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.deepPurple),
                ),
                child: Center(
                  child: Text(
                    "13+",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            ZoomTapAnimation(
              child: Container(
                padding: const EdgeInsets.only(left: 6, right: 6),
                height: 23,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.deepPurple),
                ),
                child: Center(
                  child: Text(
                    "United States",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            ZoomTapAnimation(
              child: Container(
                padding: const EdgeInsets.only(left: 6, right: 6),
                height: 23,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.deepPurple),
                ),
                child: Center(
                  child: Text(
                    "Subtitle",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            ZoomTapAnimation(
              child: Container(
                  width: 160,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.deepPurple,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.play_circle_fill,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      const Text("Play", style: TextStyle(color: Colors.white))
                    ],
                  )),
            ),
            SizedBox(width: 10),
            ZoomTapAnimation(
              child: Container(
                  width: 160,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(color: Colors.deepPurple)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.file_download_outlined,
                        color: Colors.deepPurple,
                      ),
                      SizedBox(width: 10),
                      const Text("Download",
                          style: TextStyle(color: Colors.deepPurple))
                    ],
                  )),
            ),
          ],
        ),
      ],
    );
  }
}