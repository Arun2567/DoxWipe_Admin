import 'package:flutter/material.dart';
import 'package:doxwipe/signup.dart';
import 'package:doxwipe/screen.dart';

void main() =>runApp(MaterialApp(
  home: MyApp(),
  debugShowCheckedModeBanner: false,
)
);

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen(),

    );
  }

}