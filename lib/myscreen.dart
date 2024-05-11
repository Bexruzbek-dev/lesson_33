import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lesson_33/info.dart';

bool isVisible = false;
int counter = 0;

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  PreferredSizeWidget buildAppBar(String title) {
    return AppBar(
      title: Text(title),
    );
  }

  Widget buildButton({required String text, required VoidCallback onPressed}) {
    return ElevatedButton(
      child: Text(text),
      onPressed: () {
        onPressed();
      },
    );
  }

  Widget restart({required String text, required VoidCallback onPressed}) {
    return ElevatedButton(
      child: Text(text),
      onPressed: () {
        onPressed();
      },
    );
  }

  Widget chip() {
    return Chip(
      label: Text("Bosdingiz: $counter"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("Market"),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Wrap(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return Info(productName: "Camera");
                          },
                        ),
                      );
                    },
                    child: Card(
                      child: Image.network(
                          "https://images.pexels.com/photos/90946/pexels-photo-90946.jpeg?cs=srgb&dl=pexels-madebymath-90946.jpg&fm=jpg"),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return Info(productName: "Line");
                          },
                        ),
                      );
                    },
                    child: Card(
                      child: Image.network(
                          "https://www.feedough.com/wp-content/uploads/2020/07/PRODUCT-LINE.png"),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return Info(productName: "Vino");
                          },
                        ),
                      );
                    },
                    child: Card(
                      child: Image.network(
                          "https://b2861582.smushcdn.com/2861582/wp-content/uploads/2023/02/splash-01-605-v1.png?lossy=2&strip=1&webp=1"),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
