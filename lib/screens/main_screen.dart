import 'package:flutter/material.dart';

import '../widgets/app_bottom_navigation.dart';
import 'hits_screen.dart';
import 'new_books_screen.dart';
import 'catalog_screen.dart';
import 'my_books_screen.dart';
import 'player_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  void changeScreen(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List<Widget> screens = const [
    HitsScreen(),
    NewBooksScreen(),
    CatalogScreen(),
    PlayerScreen(),
    MyBookScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: AppBottomNavigation(
        activeIndex: currentIndex,
        onTap: changeScreen,
      ),
    );
  }
}
