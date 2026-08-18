import 'package:flutter/material.dart';
import '../widgets/app_search_bar.dart';
import '../widgets/category_card.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});
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
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  CategoryCard(
                    title: 'Бизнес-книги',
                    image: 'assets/images/book1.png',
                  ),
                  CategoryCard(
                    title: 'Любовные романы',
                    image: 'assets/images/book2.jpg',
                  ),
                  CategoryCard(
                    title: 'Психология',
                    image: 'assets/images/book3.jpg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
