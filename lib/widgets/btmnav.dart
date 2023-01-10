import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import 'package:stist_chat/screens/announcementpage.dart';
import 'package:stist_chat/screens/groupspage.dart';
import 'package:stist_chat/screens/homepage.dart';
import 'package:stist_chat/screens/settingspage.dart';

class BtmNav extends StatefulWidget {
  const BtmNav({super.key});

  @override
  State<BtmNav> createState() => _BtmNavState();
}

class _BtmNavState extends State<BtmNav> {
  int _selectedIndex = 0;
  final _pages = const [
    HomePage(),
    GroupsPage(),
    AnnouncementPage(),
    SettingsPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: SlidingClippedNavBar(
        barItems: [
          BarItem(title: 'Chats', icon: Icons.chat),
          BarItem(title: 'Groups', icon: Icons.group),
          BarItem(title: 'Notification', icon: Icons.notifications),
          BarItem(title: 'Settings', icon: Icons.settings)
        ],
        selectedIndex: _selectedIndex,
        onButtonPressed: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        iconSize: 30,
        activeColor: const Color(0xFF01579B),
      ),
    );
  }
}
