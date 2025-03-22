import 'package:flutter/material.dart';
import 'package:meditrack/screens/auth/sign/Sign_In.dart';
import 'package:meditrack/screens/auth/sign/Sign_Up.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var emailController;
    return DefaultTabController(
      length: 2, //
      child: Scaffold(
        body: Column(
          children: [
            //
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "assets/sigin1.png",  //
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.transparent,Colors.white,],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  // TabBar
                  TabBar(
                    controller: _tabController,
                    labelColor: Colors.black,
                    indicatorColor: Colors.purple,
                    tabs: [
                      Tab(text: "Sign In"),
                      Tab(text: "Sign Up"),
                    ],
                  ),
                  // TabBarView
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: [

                        Sign_In(), //
                        Sign_Up(), //
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



