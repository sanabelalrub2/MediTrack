import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widget/CustomButton.dart';
import '../../../widget/custom_text_form_field.dart';

class Sign_Up extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  var formKey = GlobalKey<FormState>();
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
    body: SingleChildScrollView(
      child: Padding(
      padding: const EdgeInsets.all(16.0),
      child:Form(
        key: formKey ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          CustomTextFormField(
          labelText: "Name",
          controller: nameController,
          validator: (val){

            if(val==null||val.isEmpty){
              return "Please Enter Your Name";
            }
            return null;
          },
          ),



            SizedBox(height: 10),



        CustomTextFormField(
          labelText: "Email",
          controller: emailController,
          validator: (val){

            if(val==null||val.isEmpty){
              return "Please Enter Your Email";
            }
            return null;
          },),
            SizedBox(height: 10),
            CustomTextFormField(
              labelText: "Password",
              controller: passwordController,
              isPassword: true,
              validator: (val){

                if(val==null||val.isEmpty){
                  return "Please Enter Your Password";
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            CustomButton(
          onPressed:(){ if (formKey.currentState!.validate()) {

          }},
              onePressedName: "Create an account",

            ),
          ],
        ),
      ),

            ),
    ));
  }
}
