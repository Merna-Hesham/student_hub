import '../data/sample_data.dart';
import '../models/class_session.dart';

double gradePoints(String grade){
  switch (grade){
    case 'A':
      return 4.0;
    case 'A-':
      return 3.7;
    case 'B+':
      return 3.3;
    case 'B':
      return 3.0;
    default:
      return 2.0;
  }
}

int totalCredits(){
  int total = 0;
  for (final course in allCourses){
    total = total + course.credits;
  }
  return total;
}

double calculateGpa(){
  double points = 0;
  for (final course in allCourses){
    points = points + gradePoints(course.grade) * course.credits;
  }
  return points / totalCredits();
}

List<ClassSession> sessionsForDay(int day){
  final result = <ClassSession>[];
  for (final session in allSessions){
    if (session.day == day){
      result.add(session);
    }
  }
  return result;
}
