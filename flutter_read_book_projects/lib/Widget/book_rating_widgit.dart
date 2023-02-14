import 'package:flutter/material.dart';

import '../Consttants/consttants.dart';

class BookRating extends StatelessWidget {
  final double score;

  const BookRating({
    super.key,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: const Offset(3, 7),
            blurRadius: 20,
            color: const Color(0xffd3d3d3).withOpacity(.5),
          ),
        ],
      ),
      child: Column(
        children: [
          const Icon(
            Icons.star,
            size: 15,
            color: kIconColor,
          ),
          const SizedBox(height: 5),
          Text(
            '$score',
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
