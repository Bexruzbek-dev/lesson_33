import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:lesson_33/widgets/cinema/main.dart';

class ActionButton extends StatefulWidget {
  const ActionButton({super.key});

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: const Color.fromARGB(144, 2, 8, 47),
        borderRadius: BorderRadius.circular(16),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 30,
                  color: const Color(0xffa3a3a3),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Cinema(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.explore,
                  size: 30,
                  color: Colors.deepPurple,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_border,
                  size: 30,
                  color: const Color(0xffa3a3a3),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_for_work_sharp,
                  size: 30,
                  color: const Color(0xffa3a3a3),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person_outline,
                  size: 30,
                  color: const Color(0xffa3a3a3),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
