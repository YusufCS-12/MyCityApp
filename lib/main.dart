import 'package:bingol/pages/News/all_news.dart';
import 'package:bingol/pages/Notices/all_notices.dart';
import 'package:bingol/pages/pharmacies.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './pages/root.dart';
import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BAK",
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
      ),
      routes: {
        '/': (context) => Root(),
        '/pharmacies': (context) => Pharmacies(),
        '/news': (context) => AllNews(),
        '/notices': (context) => AllNotices(),
      },
    );
  }
}
