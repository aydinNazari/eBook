import 'package:flutter/material.dart';
import 'package:flutter_read_book_projects/Widget/two_side_rounded_button.dart';

import '../Consttants/consttants.dart';
import 'book_rating_widgit.dart';

class readingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String auth;
  final double rating;
  final void Function()? pressDetiles;
  final void Function()? pressRead;

  const readingListCard({
    super.key,
    required this.image,
    required this.title,
    required this.auth,
    required this.rating,
    required this.pressDetiles,
    required this.pressRead,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, bottom: 40),
      height: 245,
      width: 202,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 33,
                    color: kShadow,
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            image,
            width: 150,
          ),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
                BookRating(score: rating),
              ],
            ),
          ),
          Positioned(
            top: 160,
            child: Container(
              height: 85,
              width: 282,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: const TextStyle(color: kBlack),
                        children: [
                          TextSpan(
                            text: '$title\n',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: auth,
                            style: const TextStyle(color: kLightBlack),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: pressDetiles,
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          width: 101,
                          alignment: Alignment.center,
                          child: const Text('Detiels'),
                        ),
                      ),
                      TwoSideRoundedButton(
                        text: 'Read',
                        press: pressRead,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
