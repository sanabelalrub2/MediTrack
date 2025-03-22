import 'package:flutter/material.dart';

import '../Forget_Password.dart';

class Sign_In extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to MediTrack",style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w600,
          color: Colors.deepPurple,
          letterSpacing: 1.5,
          shadows: [
            Shadow(
              color: Colors.black38,
              offset: Offset(2, 2),
              blurRadius: 4,
            ),
          ],
        ),),
      ),
      body: SingleChildScrollView(  //
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Email TextField
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              // Password TextField
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter your password",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              // Sign In Button
              ElevatedButton(
                onPressed: () {

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
              ),
              SizedBox(height: 8),
              // Forgot Password Button
              TextButton(
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Forgot_Password()),
                  );
                },
                child: Text("Forgot Password?"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

