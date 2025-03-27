import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widget/CustomButton.dart';
import '../../../widget/custom_text_form_field.dart';
import 'reset_password.dart';

class Forget_Password extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 400),


                Text("Please Enter Your Email To Reset Password"),


                SizedBox(height: 14),
                CustomTextFormField(
                  labelText: "Email",
                  controller: emailController,
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Please Enter Your Email";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print("Reset password process started");


                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResetPassword(),
                        ),
                      );
                    }
                  },
                  name: "Reset Password",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
