import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final onPressed;
  final  String onePressedName;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.onePressedName,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          onPressed:   widget.onPressed,
      child: Text(widget.onePressedName),
    );
  }
}
