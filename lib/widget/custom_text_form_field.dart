import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String labelText;
  final TextEditingController controller;
  final bool isPassword;
  final FormFieldValidator<String>? validator;


  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.controller,
    this.isPassword = false,
     this.validator
  });

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(


      controller: widget.controller,
      obscureText: widget.isPassword && !isPasswordVisible,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.isPassword ? "Enter your password" : null,
        border: const OutlineInputBorder(),
        suffixIcon: widget.isPassword
            ? IconButton(
          icon: Icon(
            isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              isPasswordVisible = !isPasswordVisible;
            });
          },
        )
            : null,
      ),
      validator:  widget.validator,


    );
  }
}
