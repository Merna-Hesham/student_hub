import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget{
  final String label;
  final String value;

  const SummaryCard({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context){
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;

   return Container(
     padding: EdgeInsets.all(16),
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(16),
       color: scheme.surfaceContainerLow,
     ),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text(
           value,
           style: textTheme.headlineSmall?.copyWith(color: scheme.primary),
         ),

         const SizedBox(height: 4,),

         Text(
           label,
           style: textTheme.bodySmall?.copyWith(color: scheme.onSurfaceVariant),
         ),
       ],
     ),
   );
  }
}
