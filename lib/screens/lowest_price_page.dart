import 'package:flutter/material.dart';

class LowestPricePage extends StatefulWidget {
  const LowestPricePage({super.key});

  @override
  State<LowestPricePage> createState() => _LowestPricePageState();
}

class _LowestPricePageState extends State<LowestPricePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: screenHeight * 0.15,
              width: screenWidth,
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
                    children: const [
                      Text(
                        "최저가 제안가",
                        style: TextStyle(
                          fontFamily: "NanumSquareRound",
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "총 12,000원",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "KCC",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1,
                    blurRadius: 10,
                  )
                ],
              ),
              width: screenWidth * 0.95,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/coupangLogo.png"),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/chicken.png"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 100,
                        height: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "하림 닭볶음탕용 냉장 절단육",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 15,
                                  color: Color.fromARGB(255, 235, 225, 137),
                                ),
                                Text("4.6"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "4,800원",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "KCC",
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/checkMark.png"),
                      ),
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
