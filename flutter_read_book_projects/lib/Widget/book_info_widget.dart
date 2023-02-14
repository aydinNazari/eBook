import 'package:flutter/material.dart';
import 'package:flutter_read_book_projects/Widget/rounded_button.dart';

import '../Consttants/consttants.dart';
import 'book_rating_widgit.dart';


class BookInfoWidgit extends StatelessWidget {
  const BookInfoWidgit({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Crushing &\n',
                      style: TextStyle(
                          color: kLightBlack, fontSize: 28),
                    ),
                    TextSpan(
                      text: 'Influence',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40,right: 10),
                      child: Column(
                        children:  [
                          const SizedBox(height: 4,),
                          const Text(
                            'In his 2009 international bestseller Crush It, '
                                'Gary insisted that a vibrant personal brand was crucial to entrepreneurial success',
                            maxLines: 5,
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 9, color: kLightBlack),
                          ),
                          const SizedBox(height: 5,),
                          RoundedButton(
                              text: 'Read',
                              verticalPadding: 5,
                              press: () {})
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(Icons.favorite_border),
                      ),
                      const SizedBox(height: 5),
                      const BookRating(score: 4.9),

                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Image.asset(
          'assets/images/book-1.png',
          height: 200,
        )
      ],
    );
  }
}
