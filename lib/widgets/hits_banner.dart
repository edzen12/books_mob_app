import 'package:flutter/material.dart';

class HitsBanner extends StatelessWidget {
  const HitsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage('assets/images/banner2.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
