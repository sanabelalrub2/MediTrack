import 'package:flutter/material.dart';

class Sign_in_Widget extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const Sign_in_Widget({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  @override
  State<Sign_in_Widget> createState() => _SiginWidgetState();
}

class _SiginWidgetState extends State<Sign_in_Widget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        String email = widget.emailController.text;
        String password = widget.passwordController.text;

        if (email.isEmpty || password.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("⚠ Please enter both email and password"),
              backgroundColor: Colors.black26,
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(" Login successful!"),
              backgroundColor: Colors.green,
            ),
          );
        }
      },
      child: const Text("Sign In"),
    );
  }
}
