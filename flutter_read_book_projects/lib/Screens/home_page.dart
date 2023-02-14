import 'package:flutter/material.dart';
import 'package:flutter_read_book_projects/Screens/details_page.dart';

import '../Consttants/consttants.dart';
import '../Widget/book_rating_widgit.dart';
import '../Widget/reading_list_card_widget.dart';
import '../Widget/two_side_rounded_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/main_page_bg.png'),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * .1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.displaySmall,
                      children: const [
                        TextSpan(text: 'What are you\n reading '),
                        TextSpan(
                          text: 'today?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      readingListCard(
                        image: 'assets/images/book-1.png',
                        title: 'Crushing & Influence',
                        auth: 'Gray Venchuk',
                        rating: 4.9,
                        pressDetiles: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:(context)=>const DetailsPage(),
                            ),
                          );
                        },
                        pressRead: () {},
                      ),
                      readingListCard(
                        image: 'assets/images/book-2.png',
                        title: 'Top Ten Business Hacks',
                        auth: 'Herman Joel',
                        rating: 4.8,
                        pressDetiles: () {},
                        pressRead: () {},
                      ),

                      const SizedBox(width: 30)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.headlineSmall,
                          children: const [
                            TextSpan(text: 'Best Of The '),
                            TextSpan(
                              text: 'Day',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      bestOfTheDayCard(size, context),
                      RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.headlineMedium,
                            children: const [
                              TextSpan(text: 'Continue'),
                              TextSpan(
                                  text: ' reading...',
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                            ]),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(38.5),
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 10),
                                blurRadius: 33,
                                color: const Color(0xffd3d3d3).withOpacity(0.84)),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(38.5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 30,right: 20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: const [
                                            Text(
                                              'Crushing & Influence',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'Gary Venchuk',
                                              style:
                                                  TextStyle(color: kLightBlack),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Text(
                                                'Chapter 7 of 10',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: kLightBlack),
                                              ),
                                            ),
                                            SizedBox(height: 5,)
                                          ],
                                        ),
                                      ),
                                      Image.asset(
                                        'assets/images/book-1.png',
                                        width: 55,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 7,
                                width: size.width * 0.6,
                                decoration: BoxDecoration(
                                    color: kProgressIndicator,
                                    borderRadius: BorderRadius.circular(7)),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 40)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width,
      height: 205,
      child: Stack(
        children: [
          Positioned(
            top: 10,
            child: Container(
              padding:
                  EdgeInsets.only(left: 24, top: 24, right: size.width * 0.35),
              height: 185,
              width: size.width,
              decoration: BoxDecoration(
                color: const Color(0xffeaeaea).withOpacity(.45),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'New York Time Best For 11th March 2023',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: kLightBlack),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'How To Win \nFriends & Influence',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const Text(
                    'Gary Venchuk',
                    style: TextStyle(color: kLightBlack),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      BookRating(score: 4.9),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'When The earth was flat and everyone wanted to win',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 10, color: kLightBlack),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: -20,
            child: Image.asset(
              'assets/images/book-3.png',
              width: size.width * 0.37,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: TwoSideRoundedButton(
                text: 'Read',
                radious: 24,
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
