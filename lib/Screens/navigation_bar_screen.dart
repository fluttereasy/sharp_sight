import 'package:flutter/material.dart';
import 'package:sharp_sight/Screens/dash_screen.dart';
import 'package:sharp_sight/Screens/profile_screen.dart';
import '../Homescreen/home_screen.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int currentIndex = 0;
  final screens = [
    const HomeScreen(),
    const DashScreen(),
    const Profilescreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.purple,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
              label: 'Home',
              backgroundColor: Colors.grey,
              icon: Icon(Icons.home_filled)),
          BottomNavigationBarItem(
              label: 'Dashboard',
              backgroundColor: Colors.pink,
              icon: Icon(Icons.dashboard_customize_rounded)),
          BottomNavigationBarItem(
              label: 'Profile',
              backgroundColor: Colors.yellow,
              icon: Icon(Icons.person)),
          BottomNavigationBarItem(
              label: 'Exit',
              backgroundColor: Colors.red,
              icon: Icon(Icons.exit_to_app))
        ],
      ),
    );
  }
}
