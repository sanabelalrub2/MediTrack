import 'package:flutter/material.dart';
import 'reset_password.dart'; //

class Forgot_Password extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}


class _ForgotPasswordState extends State<Forgot_Password> {
  final TextEditingController emailController = TextEditingController();

  void _resetPassword() {
    String email = emailController.text.trim();

    if (email.isEmpty || !email.contains("@")) {
      _showTopSnackBar(context, "Please enter a valid email address!", Colors.black26);
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ResetPassword()), //
      );
    }
  }

  void _showTopSnackBar(BuildContext context, String message, Color backgroundColor) {
    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: 70,
        left: 20,
        right: 20,
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              message,
              style: const TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );

    overlay.insert(overlayEntry);

    Future.delayed(const Duration(seconds: 3), () {
      overlayEntry.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Forgot Password")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Enter your email to reset your password."),
            const SizedBox(height: 16),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: "Email Address",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: _resetPassword,
                child: const Text("Reset Password"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
