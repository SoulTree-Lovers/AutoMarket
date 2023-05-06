import 'package:automarket/widgets/default_button.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Center(
          child: Text(
            "장바구니",
            style: TextStyle(
              fontFamily: "NanumSquare",
              fontWeight: FontWeight.w900,
              fontSize: 20,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.my_library_books_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home_filled),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFAAC8A7),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(5, 5),
                      ),
                    ],
                  ),
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "AI 분석 결과,",
                        style: TextStyle(
                          fontFamily: "KCC",
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "오토마켙에서 최저가를 제안해요 !",
                        style: TextStyle(
                          fontFamily: "KCC",
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFAAC8A7),
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              height: screenHeight * 0.15,
              width: screenWidth * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(
                        Icons.monetization_on_outlined,
                        color: Colors.yellow,
                      ),
                      Text(
                        "승민님이 받을 혜택",
                        style: TextStyle(
                          fontFamily: "UhBeebaby",
                          // fontFamily: "NanumSquare",
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                        ),
                      ),
                      Icon(
                        Icons.monetization_on_outlined,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.black12,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            DefaultButton(
                              text: "쿠팡 와우회원",
                              buttonColor: const Color(0xFFE13327),
                              buttonWidth: 128,
                              buttonHeight: 30,
                              textColor: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            DefaultButton(
                              text: "마켓컬리 컬리패스",
                              buttonColor: const Color(0xFF5F0C80),
                              buttonWidth: 150,
                              buttonHeight: 30,
                              textColor: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            DefaultButton(
                              text: "SSG 스마일 클럽",
                              buttonColor: const Color(0xFFFCCF05),
                              buttonWidth: 180,
                              buttonHeight: 30,
                              textColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFAAC8A7),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              height: screenHeight * 0.15,
              width: screenWidth * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(
                        "assets/images/saveMoney.png",
                      ),
                    )),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "최저가 제안가",
                        style: TextStyle(
                          fontFamily: "NanumSquareRound",
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        "총 12,000원",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "KCC",
                        ),
                      ),
                      DefaultButton(
                        text: "자세히 보기",
                        buttonColor: const Color.fromARGB(255, 182, 182, 182),
                      ),
                    ],
                  ),
                  DefaultButton(
                    text: "담기",
                    buttonWidth: 50,
                    buttonHeight: 50,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFAAC8A7),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              height: screenHeight * 0.15,
              width: screenWidth * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(
                        "assets/images/rate.png",
                      ),
                    )),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "높은 별점 위주 제안가",
                        style: TextStyle(
                          fontFamily: "NanumSquareRound",
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        "총 15,900원",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "KCC",
                        ),
                      ),
                      DefaultButton(
                        text: "자세히 보기",
                        buttonColor: const Color.fromARGB(255, 182, 182, 182),
                      ),
                    ],
                  ),
                  DefaultButton(
                    text: "담기",
                    buttonWidth: 50,
                    buttonHeight: 50,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFAAC8A7),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              height: screenHeight * 0.15,
              width: screenWidth * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(
                        "assets/images/sales.png",
                      ),
                    )),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "구매량 위주 제안가",
                        style: TextStyle(
                          fontFamily: "NanumSquareRound",
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        "총 14,300원",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "KCC",
                        ),
                      ),
                      DefaultButton(
                        text: "자세히 보기",
                        buttonColor: const Color.fromARGB(255, 182, 182, 182),
                      ),
                    ],
                  ),
                  DefaultButton(
                    text: "담기",
                    buttonWidth: 50,
                    buttonHeight: 50,
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
