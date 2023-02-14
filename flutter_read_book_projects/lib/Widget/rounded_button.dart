import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final void Function()? press;
  final double verticalPadding;
  final double fontSize;

  const RoundedButton({
    super.key,
    required this.text,
    required this.press,
    this.verticalPadding = 16,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 16),
        padding:  EdgeInsets.symmetric(horizontal: 30, vertical: verticalPadding),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 15),
              blurRadius: 15,
              color: const Color(0xff666666).withOpacity(0.11),
            ),
          ],
        ),
        child: Text(
          text,
          style:  TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
