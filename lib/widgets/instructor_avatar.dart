import 'package:flutter/material.dart';

class InstructorAvatar extends StatelessWidget {
  const InstructorAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 150,
      backgroundImage: AssetImage('lib/assets/images/instr.jpeg'),
    );
  }
}
