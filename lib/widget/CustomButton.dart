import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final onPressed;
  final  String name;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.name,
  });

  @override

  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          onPressed:   widget.onPressed,
      child: Text(widget.name),
    );
  }
}
