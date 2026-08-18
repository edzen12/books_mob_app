import 'package:flutter/material.dart';

import '../widgets/app_search_bar.dart';
import '../widgets/book_card.dart';

class NewBooksScreen extends StatelessWidget {
  const NewBooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
              child: AppSearchBar(),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 22,
                  childAspectRatio: 0.62,
                  children: [
                    BookCard(
                      image: 'assets/images/book6.jpg',
                      title: 'Преступление и наказание',
                      author: "Фёдор Достоевский",
                    ),
                    BookCard(
                      image: 'assets/images/book7.jpg',
                      title: 'Война и мир',
                      author: "Лев Толстой",
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
