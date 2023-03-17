import 'package:flutter/material.dart';
import 'package:sthaan/pages/district_list.dart';
import 'package:sthaan/pages/district_list1.dart';
import 'package:sthaan/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sthaan/pages/firstpage.dart';
import 'package:sthaan/pages/mapspage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const FirstPage(),
        MyRoutes.homeRoute: (context) => const MapsPage(),
        MyRoutes.loginRoute: (context) => const FirstPage(),
        MyRoutes.districtRoute: (context) => DistrictPage(),
        MyRoutes.districtRoute1: (context) => const DistrictPage1(
              title: 'Districts1',
            ),
      },
    );
  }
}
