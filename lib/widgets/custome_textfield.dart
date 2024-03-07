import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({Key? key, required this.hintText, required this.icon})
      : super(key: key);
  final String hintText;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
          fontSize: 16, color: Color.fromARGB(82, 158, 158, 158)),
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        prefixIcon: IconButton(
          icon: Icon(
            icon,
            size: 25,
            color: const Color.fromARGB(255, 158, 158, 158),
          ),
          onPressed: () {},
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Color(0xff251E91),
          ),
        ),
      ),
    );
  }
}
