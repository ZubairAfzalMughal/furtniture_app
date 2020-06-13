import 'package:flutter/material.dart';
import 'package:furtniture_app/constant.dart';
import 'package:furtniture_app/screens/products/product.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          accentColor: kPrimaryColor,
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme
          ),
      ),
      home:  MainProduct(),
    );
  }
}

