import 'package:flutter/material.dart';
import '../data/sample_data.dart';
import '../utils/grades.dart';
import '../widgets/course_card.dart';

class CoursesScreen extends StatelessWidget{
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context){
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My courses',
                style: textTheme.headlineMedium?.copyWith(
                  color: scheme.onSurface,
                ),
              ),

              const SizedBox(
                height: 4,
              ),

              Text(
                '${allCourses.length} courses · ${totalCredits()} credits',
                style: textTheme.bodyMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),

              const SizedBox(
                height: 16,
              ),

              Expanded(
                child: GridView.builder(
                  itemCount: allCourses.length,
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 12,
                    childAspectRatio: 3.8,
                  ),
                  itemBuilder: (context, index) {
                    final course = allCourses[index];
                    return CourseCard(course: course);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
