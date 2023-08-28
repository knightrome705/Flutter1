import 'package:flutter/material.dart';
import 'package:listener/Bottomsheet.dart';
import 'package:listener/Controller/saticdetails.dart';
import 'package:listener/Controller/Darkcontroller.dart';
import 'package:listener/Controller/Listcontroller.dart';
import 'package:listener/Martin.dart';
import 'package:listener/My_page.dart';
import 'package:listener/Task1.dart';
import 'package:listener/Test.dart';
import 'package:listener/fonts.dart';
import 'package:listener/home.dart';
import 'package:listener/provider.dart';
import 'package:provider/provider.dart';

import 'Dropdown.dart';
import 'Imageview.dart';
import 'Rate.dart';
import 'Slidder.dart';
import 'WidgetCreation.dart';
import 'animations.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => valuecontroller(),),
                   ChangeNotifierProvider(create: (context) => Darkcontroller(),),
              ChangeNotifierProvider(create: (context) => Listcontroller(),),
            // ChangeNotifierProvider(create: (context) => Darkc(),)
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Provider.of<Darkcontroller>(context).bg,
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
       // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Martin1()
    );
  }
}

