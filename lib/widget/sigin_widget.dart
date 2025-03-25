import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SiginWidget extends StatefulWidget {
  const SiginWidget({super.key});

  @override
  State<SiginWidget> createState() => _SiginWidgetState();
}

class _SiginWidgetState extends State<SiginWidget> {
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: () {
        final TextEditingController emailController = TextEditingController();
        final TextEditingController passwordController = TextEditingController();

        String email = emailController.text;
        String password = passwordController.text;

        if (email.isEmpty || password.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Please enter both email and password")),
          );
        } else {
          // Here you can add actual login logic
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Login successful!")),
          );
        }
      },
      child: Text("Sign In"),
    );
  }
}

mixin passwordController {
}

mixin emailController {
  String text =TextEditingController() as String;
}
