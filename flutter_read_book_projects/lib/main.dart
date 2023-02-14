import 'package:flutter/material.dart';
import 'package:flutter_read_book_projects/Consttants/consttants.dart';

import 'Screens/welcom_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "eBook",
      
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(displayColor: kBlack)),
      debugShowCheckedModeBanner: false,
      home: const WelcomPage(),
    );
  }
}
