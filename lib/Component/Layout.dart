import 'package:flutter/material.dart';
import 'package:signup_page/Pages/calls_page.dart';
import 'package:signup_page/Pages/communities_page.dart';
import 'package:signup_page/Pages/home_page.dart';
import 'package:signup_page/Pages/status_page.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  // Keeps track of pages to display
  int _selectedIndex = 0;

  // Method used to display selectedIndex(pages)
  void _navigationChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    // Homepage
    const HomePage(),

    // Status page
    const StatusPage(),

    // Communities page
    const CommunitiesPage(),

    // Calls page
    const CallsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Page display
      body: _pages[_selectedIndex],

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigationChange,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 8, 39, 16),
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                color: Colors.white,
              ),
              label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: "Updates"),
          BottomNavigationBarItem(
              icon: Icon(Icons.groups), label: "Communities"),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Calls"),
        ],
      ),
    );
  }
}
