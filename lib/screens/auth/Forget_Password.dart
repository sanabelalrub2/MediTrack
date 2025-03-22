import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Forgot_Password extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forgot Password")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter your email to reset your password."),
            TextField(
              decoration: InputDecoration(labelText: "Email Address"),
            ),
            ElevatedButton(
              onPressed: () {
                //
              },
              child: Text("Reset Password"),
            ),
          ],
        ),
      ),
    );
  }
}