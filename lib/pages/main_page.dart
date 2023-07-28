import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_seeker_app_flutter/pages/home_screen.dart';
import 'package:job_seeker_app_flutter/pages/message_screen.dart';
import 'package:job_seeker_app_flutter/pages/saved_screen.dart';
import 'package:job_seeker_app_flutter/pages/search_screen.dart';
import 'package:job_seeker_app_flutter/pages/settings_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final List<Widget> _screens = [
    const HomeScreen(), const SearchScreen(), const SavedScreen(), const MessageScreen(), const SettingsScreen(),

  ];
  Widget _selectedScreen = const HomeScreen();
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
            _selectedScreen = _screens[index];

          });
        },
        selectedIndex: currentPageIndex,
        indicatorColor: const Color.fromRGBO(1, 104, 230, 1),
        destinations: const [
          NavigationDestination(
              icon: Icon(CupertinoIcons.home, size: 30), label: ""),
          NavigationDestination(
            icon: Icon(CupertinoIcons.search, size: 30),
            label: '',
          ),
          NavigationDestination(
              icon: Icon(CupertinoIcons.bookmark, size: 30), label: ""),
          NavigationDestination(
              icon: Icon(CupertinoIcons.mail, size: 30), label: ""),
          NavigationDestination(
              icon: Icon(CupertinoIcons.settings, size: 30), label: ""),
        ],
      ),
      body: _selectedScreen,
    );
  }
}
