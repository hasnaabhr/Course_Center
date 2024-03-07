import 'package:course_center/screens/on_boarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CourseCenterApp());
}

class CourseCenterApp extends StatelessWidget {
  const CourseCenterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
