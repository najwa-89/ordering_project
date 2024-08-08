// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ordering_app/widget/welcome_widget.dart';
import 'package:ordering_app/widget/auth_widget.dart';
import 'package:ordering_app/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: WelcomeWidget(),
    );
  }
}
