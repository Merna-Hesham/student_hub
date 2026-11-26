import 'package:flutter/material.dart';
import 'package:flutter_online2/widgets/profile_header.dart';
import 'package:flutter_online2/widgets/section_header.dart';
import 'package:flutter_online2/widgets/streak_card.dart';
import 'package:flutter_online2/widgets/summary_row.dart';

import '../utils/grades.dart';
import '../widgets/class_tile.dart';
import 'courses_screen.dart';

class HomeScreen extends StatelessWidget{

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    final scheme = Theme.of(context).colorScheme;
    final accents = [scheme.primary, scheme.secondary, scheme.tertiary,];
    final todaySessions = sessionsForDay(2);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            ProfileHeader(
              name: 'Merna Hesham',
              subtitle: 'Faculty of AI . Year 3',
            ),

            const SizedBox(
              height: 16,
            ),

            StreakCard(
              days: 7,
              hours: 2,
              progress: 2/3,
            ),

            const SizedBox(
              height: 16,
            ),

            SummaryRow(),

            const SizedBox(
              height: 16,
            ),

            SectionHeader(
              title: 'Today\'s Classes',
              actionText: 'See All',
              onAction: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CoursesScreen()),
                );
              },
            ),

            for (int i = 0; i < todaySessions.length && i < 3; i++)
              ClassTile(session: todaySessions[i], accent: accents[i]),
          ],
        ),
        ),
    );
  }

}
