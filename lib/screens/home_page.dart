import 'package:automarket/widgets/food_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 237, 237),
      body: NestedScrollView(
        // Setting floatHeaderSlivers to true is required in order to float
        // the outer slivers over the inner scrollable.
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '이번 달 아낀 돈',
                  style: TextStyle(
                    fontFamily: "UhBeebaby",
                    fontSize: 25.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              bottom: const PreferredSize(
                preferredSize: Size.fromHeight(20.0),
                child: Text(
                  "25,360 원",
                  style: TextStyle(
                    fontFamily: "KCC",
                    fontSize: 45.0,
                    color: Color.fromARGB(255, 58, 58, 58),
                  ),
                ),
              ),
              floating: true,
              centerTitle: true,
              expandedHeight: 100.0,
              forceElevated: innerBoxIsScrolled,
              automaticallyImplyLeading: false,
              backgroundColor: const Color(0xFFAAC8A7),
            ),
          ];
        },

        body: SingleChildScrollView(
          child: Column(
            children: [
              // const Divider(
              //   // color: Color(0xFFFCF6F5),
              //   thickness: 2,
              // ),
              Container(
                height: screenHeight * 0.25,
                width: screenWidth,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "20대가 선호하는 음식 Top 10",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 15,
                                  // fontFamily: "UhBeebaby",
                                  fontFamily: "KCC",
                                ),
                              ),
                            ),
                            Image.asset(
                              "assets/images/떡볶이.png",
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "전체보기 >",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: "KCC",
                            ),
                          ),
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          FoodCard(
                            screenWidth: screenWidth * 0.3,
                            menuName: "닭볶음탕",
                            price: 10350,
                            rating: 4.9,
                            imagePath: "assets/images/닭볶음탕.png",
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          FoodCard(
                            screenWidth: screenWidth * 0.3,
                            menuName: "제육볶음",
                            price: 6210,
                            rating: 4.8,
                            imagePath: "assets/images/제육볶음.png",
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          FoodCard(
                            screenWidth: screenWidth * 0.3,
                            menuName: "김치찌개",
                            price: 7400,
                            rating: 5.0,
                            imagePath: "assets/images/김치찌개.png",
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          FoodCard(
                            screenWidth: screenWidth * 0.3,
                            menuName: "된장찌개",
                            price: 7300,
                            rating: 4.5,
                            imagePath: "assets/images/된장찌개.png",
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
              // const Divider(
              //   // color: Color(0xFFFCF6F5),
              //   thickness: 2,
              // ),
              Container(
                height: screenHeight * 0.25,
                width: screenWidth,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "요즘 사람들이 가장 많이 먹는 음식",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 15,
                                  // fontFamily: "UhBeebaby",
                                  fontFamily: "KCC",
                                ),
                              ),
                            ),
                            Image.asset(
                              "assets/images/비빔밥.png",
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "전체보기 >",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: "KCC",
                            ),
                          ),
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          FoodCard(
                            screenWidth: screenWidth * 0.3,
                            menuName: "닭볶음탕",
                            price: 10350,
                            rating: 4.9,
                            imagePath: "assets/images/닭볶음탕.png",
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          FoodCard(
                            screenWidth: screenWidth * 0.3,
                            menuName: "제육볶음",
                            price: 6210,
                            rating: 4.8,
                            imagePath: "assets/images/제육볶음.png",
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          FoodCard(
                            screenWidth: screenWidth * 0.3,
                            menuName: "김치찌개",
                            price: 7400,
                            rating: 5.0,
                            imagePath: "assets/images/김치찌개.png",
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          FoodCard(
                            screenWidth: screenWidth * 0.3,
                            menuName: "된장찌개",
                            price: 7300,
                            rating: 4.5,
                            imagePath: "assets/images/된장찌개.png",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyIndicatorShape extends ShapeBorder {
  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) => Path();

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final path = Path();
    const double radius = 20;
    path.moveTo(rect.left + radius, rect.top);
    path.lineTo(rect.right - radius, rect.top);
    path.arcToPoint(
      Offset(rect.right, rect.top + radius),
      radius: const Radius.circular(radius),
    );
    path.lineTo(rect.right, rect.bottom);
    path.lineTo(rect.left, rect.bottom);
    path.lineTo(rect.left, rect.top + radius);
    path.arcToPoint(
      Offset(rect.left + radius, rect.top),
      radius: const Radius.circular(radius),
      clockwise: false,
    );
    path.close();
    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    return this;
  }
}
