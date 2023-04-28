import 'package:automarket/screens/home_page.dart';
import 'package:automarket/screens/my_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndexScreen = 0;

  final List _children = [
    const HomePage(),
    const MyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: _children[_selectedIndexScreen],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFFAAC8A7),
          selectedItemColor: const Color(0xFFFCF6F5),
          unselectedItemColor: const Color.fromARGB(255, 114, 113, 113),
          currentIndex: _selectedIndexScreen,
          onTap: (int index) {
            setState(() {
              _selectedIndexScreen = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "MyPage",
            ),
          ],
        ),
      ),
    );
  }
}
