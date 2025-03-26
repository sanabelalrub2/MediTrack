import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sign_Up extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(


            decoration: InputDecoration(labelText: " Name"),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(labelText: " Email"),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(labelText: " password"),
            obscureText: true,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {

            },
            child: Text("Create an account"),
          ),
        ],
      ),
    );
  }
}
