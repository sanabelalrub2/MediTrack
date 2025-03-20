import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [

              Image.asset("asests/sigin.png",height: 300,fit:BoxFit.cover,width:double.infinity,),
              Container(
                height: 300,
                width:double.infinity,


                 decoration: BoxDecoration(gradient:LinearGradient(colors: [Colors.white,Colors.transparent])),
              ),


            ],
          )
        ],
      ),
    );
  }
}
