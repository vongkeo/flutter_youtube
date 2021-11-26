import 'package:flutter/material.dart';
import 'package:toturial/screen/home.dart';
import 'package:toturial/screen/layout.dart';
import 'package:toturial/screen/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => FoodLayout(),
        '/home': (context) => ProfileScren(),
        '/second': (context) => ProfileScren(),
      },
      initialRoute: '/',
    );
  }
}
