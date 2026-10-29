import 'package:flutter/material.dart';
import 'package:flutter_online2/widgets/profile_header.dart';

class HomeScreen extends StatelessWidget{

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Student Hub',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight(200),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        leading: Icon(
          Icons.import_contacts_rounded,
          color: Colors.white,
          size: 34,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              ProfileHeader(
                name: 'Merna Hesham',
                department: 'Artificial Intelligence',
                level: 3,
              ),

              SizedBox(
                height: 10,
              ),

              ProfileHeader(name: 'Ahmed Mohamed', department: 'Artificial Intelligence - Bio', level: 4,),

              SizedBox(
                height: 10,)
              ,

              ProfileHeader(name: 'Fatma Ali', department: 'Artificial Intelligence', level: 2,),
            ],
          ),
        ),
      ),
    );
  }

}