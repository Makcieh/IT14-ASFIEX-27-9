import 'package:assfiex_app_it14/manager_side/pages/employees_pages/employees_page.dart';
import 'package:assfiex_app_it14/manager_side/pages/TA_pages/Time_Avail_page.dart';
import 'package:assfiex_app_it14/manager_side/pages/createschedpages/create_sched_page.dart';
import 'package:assfiex_app_it14/manager_side/pages/requestpages/request_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0; // Track the selected tab

  // List of pages corresponding to each tab
  static final List<Widget> _pages = <Widget>[
    const CreateSchedPage(),
    const TimeAvailPage(),
    const RequestPage(),
    const EmployeesPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Change the index when a tab is tapped
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topLeft,
            colors: [
              Color.fromARGB(255, 16, 133, 229),
              Color.fromARGB(255, 100, 206, 255),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            gap: 8,
            color: const Color.fromARGB(255, 255, 255, 255),
            activeColor: const Color.fromARGB(255, 255, 255, 255),
            tabBackgroundColor: const Color.fromARGB(255, 31, 44, 55),
            padding: const EdgeInsets.all(16),
            selectedIndex: _selectedIndex, // Pass the selected index here
            onTabChange: _onItemTapped,
            tabs: const [
              GButton(
                icon: Icons.calendar_month,
                text: 'Createe Schedule',
                textStyle: TextStyle(color: Colors.white, fontSize: 10),
              ),
              GButton(
                icon: Icons.lock_clock,
                text: 'Time Availability',
                textStyle: TextStyle(color: Colors.white, fontSize: 10),
              ),
              GButton(
                icon: Icons.document_scanner,
                text: 'Request Leave',
                textStyle: TextStyle(color: Colors.white, fontSize: 10),
              ),
              GButton(
                icon: Icons.people_alt,
                text: 'Employees',
                textStyle: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
