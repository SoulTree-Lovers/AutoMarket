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
                  Color(0xFFfda085),
                  Color(0xFFfcb69f),
                  Color(0xFFf6d365),
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
                      "assets/images/AutoMarketLogo2.png",
                    ),
                    height: 70,
                    width: 70,
                  ),
                  Text(
                    "오토마켙",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 60,
                      fontFamily: "UhBeebaby",
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "최저가 자동 장보기",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "UhBeebaby",
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                      color: Colors.black38,
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
