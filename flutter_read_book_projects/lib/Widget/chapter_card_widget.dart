import 'package:flutter/material.dart';

import '../Consttants/consttants.dart';


class ChapterCardWidget extends StatelessWidget {
  final String title;
  final String tag;
  final int chapterNumber;
  final void Function()? press;
  const ChapterCardWidget({
    super.key, required this.title, required this.tag, required this.chapterNumber, this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: 20, horizontal: 30),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            color: const Color(0xffd3d3d3).withOpacity(0.84),
          ),
        ],
      ),
      child: Row(
        children: [
          RichText(
            text:  TextSpan(
              children: [
                TextSpan(
                  text: 'Chapter $chapterNumber : $title\n',
                  style:const TextStyle(
                      fontSize: 16,
                      color: kBlack,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text: tag,
                    style: const TextStyle(color: kLightBlack)
                )
              ],
            ),
          ),
          const Spacer(),
          IconButton(onPressed: press, icon: const Icon(Icons.arrow_forward,size: 18,))
        ],
      ),
    );
  }
}
