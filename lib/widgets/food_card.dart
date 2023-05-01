import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
    required this.screenWidth,
    required this.menuName,
    required this.price,
    required this.rating,
    required this.imagePath,
  });

  final double screenWidth;
  final String menuName;
  final int price;
  final double rating;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    var f = NumberFormat('###,###,###,###'); // 천 단위마다 콤마 넣기

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: screenWidth,
            height: screenWidth,
            // color: const Color(0xFFFCF6F5),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              color: const Color(0xFFFCF6F5),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 65,
                height: 20,
                child: Text(
                  menuName, // 음식 이름
                  style: const TextStyle(
                    fontFamily: "KCC",
                    fontSize: 15,
                    color: Color.fromARGB(255, 58, 58, 58),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
                child: Icon(
                  Icons.star_rate_rounded,
                  size: 15,
                  color: Color.fromARGB(255, 235, 225, 137),
                ),
              ),
              SizedBox(
                width: 25,
                height: 20,
                child: Text(
                  "$rating", // 음식 이름
                  style: const TextStyle(
                    fontFamily: "KCC",
                    fontSize: 15,
                    color: Color.fromARGB(255, 58, 58, 58),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 65,
                height: 20,
                child: Text(
                  "최저가",
                  style: TextStyle(
                    fontFamily: "KCC",
                    fontSize: 15,
                    color:
                        const Color.fromARGB(255, 58, 58, 58).withOpacity(0.5),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                width: 65,
                height: 20,
                child: Text(
                  f.format(price),
                  style: const TextStyle(
                    fontFamily: "KCC",
                    fontSize: 17,
                    color: Color.fromARGB(255, 58, 58, 58),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 65,
                height: 20,
                child: Text(
                  "판매처",
                  style: TextStyle(
                    fontFamily: "KCC",
                    fontSize: 15,
                    color:
                        const Color.fromARGB(255, 58, 58, 58).withOpacity(0.5),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                width: 65,
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/images/coupangLogo.png",
                      width: 15,
                      height: 15,
                    ),
                    Image.asset(
                      "assets/images/naverLogo.png",
                      width: 15,
                      height: 15,
                    ),
                    Image.asset(
                      "assets/images/emartMallLogo.png",
                      width: 15,
                      height: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
