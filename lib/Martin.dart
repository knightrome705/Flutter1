import 'package:flutter/material.dart';
class Martin1 extends StatefulWidget {
  const Martin1({super.key});

  @override
  State<Martin1> createState() => _Martin1State();
}

class _Martin1State extends State<Martin1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.green,
                // shape: BoxShape.circle
                    boxShadow: [BoxShadow(color: Colors.red,offset: Offset(20, 20),blurStyle: BlurStyle.inner)]
              ),
            )
          ],
        ),
      ),
    );
  }
}
