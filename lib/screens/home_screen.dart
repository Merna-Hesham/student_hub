import 'package:flutter/material.dart';
import 'package:flutter_online2/widgets/profile_header.dart';
import 'package:flutter_online2/widgets/section_header.dart';
import 'package:flutter_online2/widgets/streak_card.dart';
import 'package:flutter_online2/widgets/summary_row.dart';

class HomeScreen extends StatelessWidget{

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24.0),
          child: Column(
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
                onAction: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }

}
