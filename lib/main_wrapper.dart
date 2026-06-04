import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'what_we_do.dart';
import "reach_out.dart";
import "about_us.dart";

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _currentTabIndex = 0; // to track where we are in the tab

  // 2. A list of the different scenes you want to display
  final List<Widget> _screens = [
    const HomeScreen(),
    const WhatWeDo(),
    const AboutUs(),
    const Center(child: Text('My Profile Screen Placeholder')), // Replace with your real widget later
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 3. Display the screen that matches the current index
      body: _screens[_currentTabIndex],

      // 4. The Material 3 Bottom Navigation Bar
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentTabIndex,
        onDestinationSelected: (int index) {
          // Update the state to redraw the screen with the new active tab
          setState(() {
            _currentTabIndex = index;
          });
        },
        // Match the clean, simple style from your wireframes
        backgroundColor: Colors.white,
        indicatorColor: const Color(0xFFE040FB).withOpacity(0.2), // Light purple highlight circle
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home, color: Color(0xFF4A148C)), // FUTA Purple when active
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.track_changes),
            selectedIcon: Icon(Icons.track_changes, color: Color(0xFF4A148C)),
            label: 'What We Do',
          ),
          NavigationDestination(
            icon: Icon(Icons.info),
            label: "About Us",
            selectedIcon: Icon(Icons.info,color: Color(0xFF4A148C),),
            ),
          NavigationDestination(
            icon: Icon(Icons.contact_support),
            selectedIcon: Icon(Icons.contact_support, color: Color(0xFF4A148C)),
            label: 'Contact Us',
          ),
        ],
      ),
    );
  }
}