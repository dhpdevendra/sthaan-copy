import 'package:flutter/material.dart';
import 'package:sthaan/utils/routes.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/PanchaAvatar.png"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Mahanubhav Sthaan Vandan"),
        ),
        body: Column(children: [
          Row(
            children: [
              const ElevatedButton(
                onPressed: null,
                child: Text("About"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: const Text("Location"),
              ),
            ],
          ),
          Row(
            children: const [
              ElevatedButton(
                onPressed: null,
                child: Text("Settings"),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text("Gallery"),
              ),
            ],
          ),
          Row(
            children: const [
              ElevatedButton(
                onPressed: null,
                child: Text("Search"),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text("Suggest Correction"),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
