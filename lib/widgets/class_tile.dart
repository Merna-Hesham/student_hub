import 'package:flutter/material.dart';
import '../models/class_session.dart';

class ClassTile extends StatelessWidget{
  final ClassSession session;
  final Color accent;

  const ClassTile({
    super.key,
    required this.session,
    required this.accent,
  });

  @override
  Widget build(BuildContext context){
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 40,
            decoration: BoxDecoration(
              color: accent,
              borderRadius: BorderRadius.circular(2),
            ),
          ),

          const SizedBox(
            width: 16,
          ),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  session.title,
                  style: textTheme.titleMedium?.copyWith(
                    color: scheme.onSurface,
                  ),
                ),

                SizedBox(
                  height: 2,
                ),

                Text(
                  '${session.start} – ${session.end} · ${session.room}',
                  style: textTheme.bodyMedium?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
