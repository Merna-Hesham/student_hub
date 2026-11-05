import 'package:flutter/material.dart';
import 'package:flutter_online2/widgets/summary_card.dart';

class SummaryRow extends StatelessWidget{
  const SummaryRow({super.key});

  @override
  Widget build(BuildContext context) {
   return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       Expanded(
         child: SummaryCard(
           label: 'Courses',
           value: 6,
         ),
       ),

       const SizedBox(width: 12,),

       Expanded(
         child: SummaryCard(
           label: 'Credits',
           value: 18,
         ),
       ),

       const SizedBox(width: 12,),

       Expanded(
         child: SummaryCard(
           label: 'GPA',
           value: 3.53,
         ),
       ),
     ],
   );
  }
}
