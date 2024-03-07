import 'package:course_center/screens/instructor_view.dart';
import 'package:course_center/widgets/custome_elevated_button.dart';
import 'package:course_center/widgets/instructor_avatar.dart';
import 'package:flutter/material.dart';

import '../widgets/custome_textfield.dart';

class InstructorLogin extends StatelessWidget {
  const InstructorLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const InstructorAvatar(),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Instructor Login',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomeTextField(
                hintText: 'Enter your Username', icon: Icons.email),
            const SizedBox(
              height: 20,
            ),
            const CustomeTextField(
                hintText: 'Enter your Password', icon: Icons.lock),
            const SizedBox(
              height: 50,
            ),
            CustomeElevatedButton(
              text: 'Login',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const InstructorView();
                  },
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}
