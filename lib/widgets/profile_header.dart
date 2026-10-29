import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {

  final String name;
  final String department;
  final int level;

  const ProfileHeader({
    super.key,
    required this.name,
    required this.department,
    required this.level
  });

  String get initials {
    final words = name.split(' ').where((w) => w.isNotEmpty);
    return words.take(2).map((w) => w[0].toUpperCase()).join();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.lightBlueAccent,
              radius: 50,
              child: Text(
                initials,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),

        SizedBox(
          height: 20,
        ),

        Text(name,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 24,
        ),),

        SizedBox(
          height: 20,
        ),

        Text(department,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 24,
          ),),

        SizedBox(
          height: 20,
        ),

        Text('Level $level student',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 24,
          ),),
      ],
    );
  }
}
