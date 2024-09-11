import 'package:books_arena/pages/home.dart';
import 'package:books_arena/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // List of pages for navigation
  final List<Widget> _pages = [
    Center(child: Text('Home Page')),
    Center(child: Text('Navigation Page')),
    Center(child: Text('Favorites Page')),
    Center(child: Text('Profile Page')),
  ];

  // Function to handle navigation tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pages[_selectedIndex], // Display the selected page
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  getNavigationBottomButton(
                    index: 0,
                    icon: Icons.home,
                    title: 'Home',
                  ),
                  getNavigationBottomButton(
                    index: 1,
                    icon: CupertinoIcons.compass,
                    title: 'Nav',
                  ),
                  getNavigationBottomButton(
                    index: 2,
                    icon: Icons.bookmark_outline_rounded,
                    title: 'Fav',
                  ),
                  getNavigationBottomButton(
                    index: 3,
                    icon: CupertinoIcons.person,
                    title: 'Profile',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Function to create navigation buttons
  Widget getNavigationBottomButton({
    required int index,
    required IconData icon,
    required String title,
  }) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Colors.orange.shade100
              : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: _selectedIndex == index ? Colors.orange : Colors.grey,
            ),
            if (_selectedIndex == index) // Show text only for selected item
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.orange,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
