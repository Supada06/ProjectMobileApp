import 'package:flutter/material.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({Key? key}) : super(key: key);

  @override
  _NavBarPagePageState createState() => _NavBarPagePageState();
}

class _NavBarPagePageState extends State<NavBarPage> {
  final int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
          ),
        ],
      ),
    );
  }
}
