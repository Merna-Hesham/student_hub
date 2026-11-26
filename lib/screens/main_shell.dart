import 'package:flutter/material.dart';
import 'courses_screen.dart';
import 'home_screen.dart';

void goToMainShell(BuildContext context){
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => const MainShell()),
        (route) => false,
  );
}

class MainShell extends StatefulWidget{
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell>{
  int _index = 0;
  final List<Widget> _screens = const [
    HomeScreen(),
    CoursesScreen(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: _screens,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (newIndex){
          setState(() {
            _index = newIndex;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),

          NavigationDestination(
            icon: Icon(Icons.menu_book_outlined),
            selectedIcon: Icon(Icons.menu_book),
            label: 'Courses',
          ),
        ],
      ),
    );
  }
}
