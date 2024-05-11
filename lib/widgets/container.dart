import 'package:flutter/material.dart';


// ignore: must_be_immutable
class PhotoContainer extends StatelessWidget {
  late String image;
  late String reting;
  PhotoContainer({super.key, required this.image, required this.reting});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(7),
        alignment: Alignment.topCenter,
        width: 160,
        height: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            Container(
              height: 30,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  reting,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ));
  }
}