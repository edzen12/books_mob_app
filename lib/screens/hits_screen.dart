import 'package:flutter/material.dart';
import '../widgets/app_search_bar.dart';
import '../widgets/hits_banner.dart';
import '../widgets/book_card.dart';

class HitsScreen extends StatelessWidget {
  const HitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 14, 16, 14),
              child: AppSearchBar(),
            ),
            const HitsBanner(),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Хиты',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.60,
                  children: [
                    BookCard(
                      image: 'assets/images/book1.png',
                      title: 'Грокаем алгоритмы',
                      author: 'Адитья Бхаргава',
                    ),
                    BookCard(
                      image: 'assets/images/book2.jpg',
                      title: 'Основы Flutter',
                      author: 'Станислав Чернышев',
                    ),
                    BookCard(
                      image: 'assets/images/book3.jpg',
                      title: 'От А до Я HTML/CSS',
                      author: 'Джон Дакет',
                    ),
                    BookCard(
                      image: 'assets/images/book4.jpeg',
                      title: 'Паттерны проектирования API',
                      author: 'Джей Джей Гивакс',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
