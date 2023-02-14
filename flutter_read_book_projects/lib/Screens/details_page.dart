import 'package:flutter/material.dart';
import 'package:flutter_read_book_projects/Widget/book_rating_widgit.dart';
import 'package:flutter_read_book_projects/Widget/rounded_button.dart';

import '../Consttants/consttants.dart';
import '../Widget/book_info_widget.dart';
import '../Widget/chapter_card_widget.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: size.width,
                    height: size.height * .4,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/bg.png'),
                          fit: BoxFit.fitWidth),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                    child: BookInfoWidgit(size: size),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.4 - 30),
                    child: Column(
                      children: [
                        ChapterCardWidget(
                            title: 'Money',
                            chapterNumber: 1,
                            tag: 'Life is about change',
                            press: () {}),
                        ChapterCardWidget(
                            title: 'Power',
                            chapterNumber: 2,
                            tag: 'Every things loves power',
                            press: () {}),
                        ChapterCardWidget(
                            title: 'Influence',
                            chapterNumber: 3,
                            tag: 'Influence easily like never befor',
                            press: () {}),
                        ChapterCardWidget(
                            title: 'Win',
                            chapterNumber: 4,
                            tag: 'Winning is what matters',
                            press: () {}),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headlineMedium,
                        children: const [
                          TextSpan(text: 'You might also'),
                          TextSpan(
                            text: ' like...',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 180,
                          width: size.width,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding:
                                EdgeInsets.only(top: 24, left: 24, right: 150),
                            height: 160,
                            width: size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              color: const Color(0xfff3eeee),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(color: kBlack),
                                    children: [
                                      TextSpan(
                                        text:
                                            'How To Win\nFriends & Influence\n',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      TextSpan(
                                          text: 'Gary Vaynerchuk',
                                          style: TextStyle(color: kLightBlack))
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    BookRating(score: 4.8),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    RoundedButton(text: 'Read', press: (){},verticalPadding: 10,)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Image.asset(
                            'assets/images/book-3.png',
                            width: 150,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
