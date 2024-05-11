import 'package:flutter/material.dart';


// ignore: must_be_immutable
class ContactUsers extends StatelessWidget {
  late String image;
  late String text1;
  late String text2;
  ContactUsers(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(7),
          alignment: Alignment.topCenter,
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: TextStyle(
                  color: Colors.grey.shade400, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              text2,
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 14,
              ),
            )
          ],
        ),
      ],
    );
  }
}