import 'package:flutter/material.dart';
import 'package:flutter_online2/data/sample_data.dart';
import 'package:flutter_online2/utils/grades.dart';
import 'package:flutter_online2/widgets/summary_card.dart';

class SummaryRow extends StatelessWidget{

  const SummaryRow({super.key});

  @override
  Widget build(BuildContext context){
   return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       Expanded(
         child: SummaryCard(
           label: 'Courses',
           value: '${allCourses.length}',
         ),
       ),

       const SizedBox(width: 12,),

       Expanded(
         child: SummaryCard(
           label: 'Credits',
           value: '${totalCredits()}',
         ),
       ),

       const SizedBox(width: 12,),

       Expanded(
         child: SummaryCard(
           label: 'GPA',
           value: calculateGpa().toStringAsFixed(2),
         ),
       ),
     ],
   );
  }
}
