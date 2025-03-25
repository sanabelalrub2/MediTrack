import 'package:flutter/material.dart';

import '../../../widget/custom_text_form_field.dart';
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
              CustomTextFormField(
                labelText: "Email",
                controller: emailController,
              ),


              SizedBox(height: 16),
              CustomTextFormField(
                labelText: "Password",
                controller: passwordController,
                isPassword: true, // إضافة هذا الحقل لتفعيل أيقونة العين
              ),
              // Sign In Button
              SizedBox(height: 16),
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

