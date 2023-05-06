import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  ProductCard({
    super.key,
    required this.screenWidth,
    required this.logoPath,
    required this.productPath,
    required this.productDescription,
    required this.productPrice,
    required this.productRate,
  });

  final double screenWidth;
  String logoPath;
  String productPath;
  String productDescription;
  String productPrice;
  double productRate;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(logoPath),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(productPath),
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
                    Text(
                      // "하림 닭볶음탕용 냉장 절단육",
                      productDescription,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star_rate_rounded,
                          size: 15,
                          color: Color.fromARGB(255, 235, 225, 137),
                        ),
                        Text("$productRate"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                productPrice,
                style: const TextStyle(
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
    );
  }
}
