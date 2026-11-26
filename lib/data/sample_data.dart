import '../models/class_session.dart';
import '../models/course.dart';

const List<Course> allCourses = [
  Course(name: 'Mobile Development', code: 'CS351', credits: 3, grade: 'A', category: 'Programming'),
  Course(name: 'Computational Intelligence', code: 'AI402', credits: 3, grade: 'A-', category: 'AI'),
  Course(name: 'Computer Security', code: 'CS410', credits: 3, grade: 'B+', category: 'Programming'),
  Course(name: 'Machine Learning', code: 'AI301', credits: 4, grade: 'A', category: 'AI'),
  Course(name: 'Data Structures', code: 'CS201', credits: 3, grade: 'B', category: 'Programming'),
  Course(name: 'Linear Algebra', code: 'MA202', credits: 3, grade: 'B+', category: 'Math'),
  Course(name: 'Databases', code: 'CS305', credits: 3, grade: 'B+', category: 'Programming'),
  Course(name: 'Probability and Statistics', code: 'MA210', credits: 3, grade: 'B', category: 'Math'),
  Course(name: 'Computer Networks', code: 'CS320', credits: 3, grade: 'B', category: 'Programming'),
  Course(name: 'Intro to Artificial Intelligence', code: 'AI101', credits: 2, grade: 'B+', category: 'AI'),
  Course(name: 'Discrete Mathematics', code: 'MA101', credits: 2, grade: 'B', category: 'Math'),
  Course(name: 'Ethics in AI', code: 'AI210', credits: 2, grade: 'B', category: 'AI'),
];

const List<ClassSession> allSessions = [
  ClassSession(title: 'Linear Algebra', room: 'Hall A', start: '09:00', end: '10:30', day: 2),
  ClassSession(title: 'Mobile Development Lab', room: 'Lab 3', start: '10:45', end: '12:15', day: 2),
  ClassSession(title: 'Machine Learning', room: 'Hall C', start: '13:00', end: '14:30', day: 2),
  ClassSession(title: 'Computer Security', room: 'Room 204', start: '15:00', end: '16:30', day: 2),
  ClassSession(title: 'Databases', room: 'Lab 1', start: '09:00', end: '10:30', day: 0),
  ClassSession(title: 'Data Structures', room: 'Hall B', start: '11:00', end: '12:30', day: 0),
  ClassSession(title: 'Computational Intelligence', room: 'Hall B', start: '10:00', end: '11:30', day: 1),
  ClassSession(title: 'Computer Networks', room: 'Lab 2', start: '12:30', end: '14:00', day: 1),
  ClassSession(title: 'Probability and Statistics', room: 'Hall A', start: '09:00', end: '10:30', day: 3),
  ClassSession(title: 'Ethics in AI', room: 'Room 101', start: '11:00', end: '12:00', day: 4),
];
