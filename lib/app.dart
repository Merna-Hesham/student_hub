import 'package:flutter/material.dart';
import 'package:flutter_online2/screens/home_screen.dart';

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Hub',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }

}