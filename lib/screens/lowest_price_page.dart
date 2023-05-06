import 'package:automarket/widgets/product_card.dart';
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "새로 구입해야 할 제품들",
                    style: TextStyle(
                      fontFamily: "NanumSquareRound",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    width: 80,
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("추가"),
                        Icon(
                          Icons.add,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ProductCard(
              screenWidth: screenWidth,
              logoPath: "assets/images/coupangLogo.png",
              productPath: "assets/images/chicken.png",
              productDescription: "하림 닭볶음탕용 냉장 절단육",
              productRate: 4.6,
              productPrice: "4,800원",
            ),
            const SizedBox(
              height: 10,
            ),
            ProductCard(
              screenWidth: screenWidth,
              logoPath: "assets/images/MarketKurlyLogo.png",
              productPath: "assets/images/carrot.png",
              productDescription: "친환경 당근 500g",
              productRate: 4.9,
              productPrice: "2,800원",
            ),
            const SizedBox(
              height: 10,
            ),
            ProductCard(
              screenWidth: screenWidth,
              logoPath: "assets/images/coupangLogo.png",
              productPath: "assets/images/potato.png",
              productDescription: "한끼 감자(햇) 350g 1봉",
              productRate: 4.8,
              productPrice: "3,200원",
            ),
            const SizedBox(
              height: 10,
            ),
            ProductCard(
              screenWidth: screenWidth,
              logoPath: "assets/images/ssgLogo.png",
              productPath: "assets/images/pepper.png",
              productDescription: "청양 고추 60g 1봉",
              productRate: 5.0,
              productPrice: "1,200원",
            ),
          ],
        ),
      ),
    );
  }
}
