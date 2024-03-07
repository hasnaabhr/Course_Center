import 'package:flutter/material.dart';

class StudentAvatar extends StatelessWidget {
  const StudentAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 150,
      backgroundImage: AssetImage('lib/assets/images/stu.jpeg'),
    );
  }
}
