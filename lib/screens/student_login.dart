import 'package:course_center/screens/student_register.dart';
import 'package:course_center/screens/student_view.dart';
import 'package:course_center/widgets/student_avatar.dart';
import 'package:flutter/material.dart';

import '../widgets/custome_elevated_button.dart';
import '../widgets/custome_textfield.dart';

class StudentLogin extends StatelessWidget {
  const StudentLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const StudentAvatar(),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Student Login',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomeTextField(
                hintText: 'Enter your E-mail', icon: Icons.email),
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
                    return const StudentView();
                  },
                ));
              },
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const Text(
                  'Don\'t Hava an account ?',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const StudentRegistration(),
                      ),
                    );
                  },
                  child: const Text(
                    ' please Register',
                    style: TextStyle(
                        color: Color(0xff251E91),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
