import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton({
    super.key,
    required this.text,
    this.buttonColor = Colors.white,
    this.buttonWidth = 128,
    this.buttonHeight = 25,
  });

  final String text;
  double buttonWidth = 128;
  double buttonHeight = 25;
  Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
        color: buttonColor,
        borderRadius: BorderRadius.circular(45),
      ),
      width: buttonWidth,
      height: buttonHeight,
      child: Text(
        text,
        style: const TextStyle(fontFamily: "KCC", fontSize: 15),
        textAlign: TextAlign.center,
      ),
    );
  }
}
