import 'dart:async';

import 'package:automarket/screens/home_screen.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: Scaffold(
          extendBodyBehindAppBar: true,
          // backgroundColor: const Color.fromARGB(255, 251, 187, 108),
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  // Color(0xFF2BAE66), // 초록색 계열
                  // Color(0xFF2BAE66),
                  Color(0xFFAAC8A7), // 초록색 계열 2
                  Color(0xFFAAC8A7),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    image: AssetImage(
                      "assets/images/계란후라이.png",
                    ),
                    height: 70,
                    width: 70,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "오토마켙",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 60,
                      fontFamily: "UhBeebaby",
                      fontWeight: FontWeight.w800,
                      color: Color(0xFFFCF6F5),
                      // color: Color.fromARGB(255, 0, 0, 0), // 검정 글씨
                    ),
                  ),
                  Text(
                    "최저가 자동 장보기",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "UhBeebaby",
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                      color: Color(0xFFFCF6F5),
                      // color: Color.fromARGB(255, 0, 0, 0), // 검정 글씨
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
