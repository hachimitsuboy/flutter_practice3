import 'package:flutter/material.dart';
import 'package:routes_pracitce/screens/first_screen.dart';
import 'package:routes_pracitce/screens/second_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final _color = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "routes, LinearProgressIndicator",
      theme: _color ? ThemeData.dark() : ThemeData.light(),
      initialRoute: '/',
      routes: {
        '/' : (context) => const FirstScreen(),
        '/second' : (context) => const SecondScreen(),
      },
      );
  }
}
