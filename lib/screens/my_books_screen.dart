import 'package:flutter/material.dart';

class MyBookScreen extends StatelessWidget {
  const MyBookScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),

              //Верхние кнопки
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyBookTopButton(icon: Icons.bookmark_add),
                  SizedBox(width: 10),
                  MyBookTopButton(icon: Icons.settings),
                ],
              ),
              SizedBox(height: 15),
              const Text(
                'Мои книги',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              const MyBookCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyBookTopButton extends StatelessWidget {
  final IconData icon;
  const MyBookTopButton({required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        boxShadow: const [
          BoxShadow(
            color: Color(0x15000000),
            blurRadius: 20,
            offset: Offset(0, 5),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Icon(icon, size: 28, color: Colors.black),
    );
  }
}

class MyBookCard extends StatelessWidget {
  const MyBookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 180,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/my_book.jpg'),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0x20000000),
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Попробуйте бесплатно',
            style: TextStyle(fontSize: 13, color: Color(0xFF9AA0A6)),
          ),
          const SizedBox(height: 3),
          const Text(
            'Как скачать книги',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
