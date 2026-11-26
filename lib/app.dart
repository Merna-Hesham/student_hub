import 'package:flutter/material.dart';
import 'package:flutter_online2/screens/main_shell.dart';
import 'Theme/app_theme.dart';

class StudentHubApp extends StatelessWidget{

  const StudentHubApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Student Hub',
      debugShowCheckedModeBanner: false,
      theme: buildTheme(Brightness.light),
      darkTheme: buildTheme(Brightness.dark),
      themeMode: ThemeMode.system,
      home: MainShell(),
    );
  }
}
