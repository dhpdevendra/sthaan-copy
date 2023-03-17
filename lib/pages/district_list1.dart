import 'package:flutter/material.dart';

class DistrictPage1 extends StatefulWidget {
  final String title;
  const DistrictPage1({super.key, required this.title});

  @override
  // ignore: library_private_types_in_public_api
  _DistrictPage1State createState() => _DistrictPage1State();
}

class _DistrictPage1State extends State<DistrictPage1> {
  List<String> listitems = [
    "Ahmednagar",
    "Akola",
    "Amravati",
    "Aurangabad",
    "Beed",
    "Bhandara",
    "Buldhana",
    "Gondia",
    "Jalgaon",
    "Jalna",
    "Nagpur",
    "Nanded",
    "Nashik",
    "Satara",
    "Wardha",
    "Washim",
    "M.P.",
  ];
  String selectval = "Ahmednagar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Districts"),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 100),
          alignment: Alignment.topCenter,
          child: DropdownButton(
            value: selectval,
            onChanged: (value) {
              setState(() {
                selectval = value.toString();
              });
            },
            items: listitems.map((itemone) {
              return DropdownMenuItem(value: itemone, child: Text(itemone));
            }).toList(),
          ),
        ));
  }
}
