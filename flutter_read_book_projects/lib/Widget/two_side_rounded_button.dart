import 'package:flutter/material.dart';

import '../Consttants/consttants.dart';

class TwoSideRoundedButton extends StatelessWidget {
  final String text;
  final double radious;
  final void Function()? press;
  const TwoSideRoundedButton({
    super.key, required this.text,  this.radious=29, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 101,
        padding:
        const EdgeInsets.symmetric(vertical: 10),
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(radious),
              bottomRight: Radius.circular(radious)
          ),
          color: kBlack,
        ),
        child:  Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}