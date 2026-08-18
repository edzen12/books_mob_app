import 'package:flutter/material.dart';

class AppBottomNavigation extends StatelessWidget {
  final int activeIndex;
  final Function(int) onTap;

  const AppBottomNavigation({
    required this.activeIndex,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        height: 75,
        margin: const EdgeInsets.fromLTRB(14, 0, 14, 7),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: const [
            BoxShadow(
              color: Color(0x20000000),
              blurRadius: 20,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: BottomNavigationItem(
                icon: Icons.star,
                title: 'Хиты',
                isActive: activeIndex == 0,
                onTap: () => onTap(0),
              ),
            ),
            Expanded(
              child: BottomNavigationItem(
                icon: Icons.menu_book,
                title: 'Новинки',
                isActive: activeIndex == 1,
                onTap: () => onTap(1),
              ),
            ),
            Expanded(
              child: BottomNavigationItem(
                icon: Icons.folder,
                title: 'Каталог',
                isActive: activeIndex == 2,
                onTap: () => onTap(2),
              ),
            ),
            Expanded(
              child: BottomNavigationItem(
                icon: Icons.headphones,
                title: 'Плеер',
                isActive: activeIndex == 3,
                onTap: () => onTap(3),
              ),
            ),
            Expanded(
              child: BottomNavigationItem(
                icon: Icons.library_books,
                title: 'Мои книги',
                isActive: activeIndex == 4,
                onTap: () => onTap(4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavigationItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isActive;
  final VoidCallback onTap;

  const BottomNavigationItem({
    required this.icon,
    required this.title,
    required this.isActive,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? const Color(0xfff0f0f0) : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 27,
              color: isActive ? const Color(0xff2389c5) : Colors.black,
            ),
            const SizedBox(height: 3),
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: isActive ? const Color(0xff2389c5) : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
