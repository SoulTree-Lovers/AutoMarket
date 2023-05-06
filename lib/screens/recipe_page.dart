import 'package:automarket/screens/cart_page.dart';
import 'package:automarket/widgets/default_button.dart';
import 'package:flutter/material.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({super.key});

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
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
            "레시피",
            style: TextStyle(
              fontFamily: "NanumSquare",
              fontWeight: FontWeight.w900,
              fontSize: 20,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
            },
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
              alignment: Alignment.center,
              width: screenWidth,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: 50,
              child: const Text(
                "닭볶음탕",
                style: TextStyle(
                  fontFamily: "NanumSquareRound",
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              height: screenHeight * 0.25,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 0),
                    spreadRadius: -10,
                    blurRadius: 10,
                    blurStyle: BlurStyle.inner,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/닭볶음탕.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: screenWidth * 0.45,
                      height: screenWidth * 0.45,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: screenWidth * 0.4,
                      height: screenWidth * 0.4,
                      decoration: BoxDecoration(
                        color: const Color(0xFFAAC8A7).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "상세설명",
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Katuri",
                                // fontFamily: "NanumSquare",
                              ),
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 15,
                                  color: Colors.amber,
                                ),
                                Text("4.9"),
                              ],
                            ),
                            const Text(
                              "요리 초보도 간편하게 만들 수 있는 매콤 달달 닭볶음탕",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text(
                                  "자세히 보기 >",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              color: Colors.white,
              width: screenWidth,
              height: screenHeight * 0.4,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "레시피 List",
                          style: TextStyle(
                            fontFamily: "NanumSquareRound",
                            fontWeight: FontWeight.w900,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          "전체 레시피 보러가기 >",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.95,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: screenWidth * 0.35,
                            height: screenHeight * 0.32,
                            decoration: BoxDecoration(
                              color: const Color(0xFFAAC8A7).withOpacity(0.7),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: const [
                                        Text("      "),
                                        Text(
                                          "레시피 1",
                                          style: TextStyle(
                                            fontFamily: "KCC",
                                            fontSize: 13,
                                          ),
                                        ),
                                        Icon(
                                          Icons.recommend_rounded,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      "\"백종원표 닭볶음탕\"",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      "고추장이 들어가지 않아 국물이 텁텁하지 않은 백종원표 닭볶음탕! 고구마와 감자가 들어가 달콤하고 고춧가루의 칼칼함을 즐기고 싶다면!",
                                      style: TextStyle(
                                        fontFamily: "NanumSquareRound",
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    DefaultButton(
                                      text: "레시피 보러가기",
                                      buttonColor: Colors.white,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    DefaultButton(
                                      text: "장바구니 담기",
                                      buttonColor: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: screenWidth * 0.35,
                            height: screenHeight * 0.25,
                            decoration: BoxDecoration(
                              color: const Color(0xFFAAC8A7).withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "레시피 2",
                                          style: TextStyle(
                                            fontFamily: "KCC",
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      "\"매콤칼칼 닭볶음탕\"",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      "블로그 통합검색 한달동안 1위를 했던 레시피에요 고추장의 질퍽대는 맛이 싫은 분들! 식당에서 파는 것처럼 칼칼하게 진한 매콤한 맛을 내는 닭볶음탕이에요 블로그에서 폭풍칭찬을 받았던 자신있는 레시피!",
                                      style: TextStyle(
                                        fontFamily: "NanumSquareRound",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: screenWidth * 0.35,
                            height: screenHeight * 0.25,
                            decoration: BoxDecoration(
                              color: const Color(0xFFAAC8A7).withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "레시피 3",
                                          style: TextStyle(
                                            fontFamily: "KCC",
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      "\"간장양념닭볶음탕\"",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      "짭쪼롬한 간장 양념이 쫘~악 배어든 닭요리, 당면이 필수인 간장 찜닭레시피에요! 간장찜닭 또는 안동찜닭 이라고 하고요, 간장찜닭 하나면 별다른 추가 반찬 없이도 훌륭한 한 끼가 되어주는 메뉴예요. 맛보장 찜닭 황금 레시피이니 맛있는 간장 찜닭같이 만들어서 맛봐요!",
                                      style: TextStyle(
                                        fontFamily: "NanumSquareRound",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              width: screenWidth,
              height: screenHeight * 0.3,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "레시피 1의 재료",
                          style: TextStyle(
                            fontFamily: "NanumSquareRound",
                            fontWeight: FontWeight.w900,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          "레시피1의 전체 재료 보러가기 >",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: const [
                        Text(
                          "재료",
                          style: TextStyle(
                            fontFamily: "KCC",
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          DefaultButton(
                            text: "닭",
                            buttonWidth: 50,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          DefaultButton(
                            text: "감자",
                            buttonWidth: 60,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          DefaultButton(
                            text: "양파",
                            buttonWidth: 60,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          DefaultButton(
                            text: "당근",
                            buttonWidth: 60,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          DefaultButton(
                            text: "버섯",
                            buttonWidth: 60,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          DefaultButton(
                            text: "대파",
                            buttonWidth: 60,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          DefaultButton(
                            text: "청양고추",
                            buttonWidth: 90,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: const [
                        Text(
                          "양념",
                          style: TextStyle(
                            fontFamily: "KCC",
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          DefaultButton(
                            text: "간장",
                            buttonWidth: 60,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          DefaultButton(
                            text: "고춧가루",
                            buttonWidth: 90,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          DefaultButton(
                            text: "설탕",
                            buttonWidth: 60,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          DefaultButton(
                            text: "다진마늘",
                            buttonWidth: 90,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
