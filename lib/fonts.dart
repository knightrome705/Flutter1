import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Fnt extends StatefulWidget {
  const Fnt({Key? key}) : super(key: key);

  @override
  State<Fnt> createState() => _FntState();
}

class _FntState extends State<Fnt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Center(child: Text("Hello martin",style:GoogleFonts.rubik(fontSize: 30))),
    );
  }
}
