import 'package:flutter/material.dart';

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
            children: [
              Text(
                menuName, // 음식 이름
                style: const TextStyle(
                  fontFamily: "KCC",
                  fontSize: 20,
                  color: Color.fromARGB(255, 58, 58, 58),
                ),
              ),
              const Icon(
                Icons.star_rate_rounded,
                size: 20,
                color: Color.fromARGB(255, 235, 225, 137),
              ),
              Text(
                "$rating", // 음식 이름
                style: const TextStyle(
                  fontFamily: "KCC",
                  fontSize: 20,
                  color: Color.fromARGB(255, 58, 58, 58),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "최저가",
                style: TextStyle(
                  fontFamily: "KCC",
                  fontSize: 20,
                  color: const Color.fromARGB(255, 58, 58, 58).withOpacity(0.5),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "$price",
                style: const TextStyle(
                  fontFamily: "KCC",
                  fontSize: 20,
                  color: Color.fromARGB(255, 58, 58, 58),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
