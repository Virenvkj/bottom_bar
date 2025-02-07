import 'package:flutter/material.dart';
import 'package:test_project/screens/account_screen.dart';
import 'package:test_project/screens/favorite_screen.dart';
import 'package:test_project/screens/home_screen.dart';
import 'package:test_project/screens/profile_screen.dart';
import 'package:test_project/screens/settings_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 0;

  List<Widget> body = const [
    HomeScreen(),
    ProfileScreen(),
    AccountScreen(),
    FavoriteScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Counter App'),
        backgroundColor: Colors.yellow,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.yellow,
        items: const [
          BottomNavigationBarItem(
            tooltip: 'This is home icon',
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            tooltip: 'This is profile icon',
            activeIcon: Icon(Icons.person),
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            tooltip: 'This is account icon',
            icon: Icon(Icons.account_balance_outlined),
            activeIcon: Icon(Icons.account_balance),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            tooltip: 'This is favorites icon',
            icon: Icon(Icons.favorite_outline),
            activeIcon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            tooltip: 'This is settings icon',
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      body: body[selectedIndex],
    );
  }
}
