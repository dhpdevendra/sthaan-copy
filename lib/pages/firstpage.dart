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
      decoration: BoxDecoration(
        image: DecorationImage(
            image: const AssetImage("assets/images/Domegram.png"),
            colorFilter: ColorFilter.mode(
                Colors.blue.withOpacity(0.5), BlendMode.dstATop),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("Mahanubhav Sthaan Vandan"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.all(30),
              child: Row(
                children: [
                  ElevatedButton.icon(
                    icon: const Icon(
                      Icons.person,
                      size: 60,
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    label: const Text('About'),
                  ),
                  //const SizedBox(
                  //width: 20,
                  //),
                  const Spacer(),

                  ElevatedButton.icon(
                    icon: const Icon(
                      Icons.person_pin_circle,
                      size: 60,
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    label: const Text('Browse all\nSthaan'),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(30),
              child: Row(
                children: [
                  ElevatedButton.icon(
                    icon: const Icon(
                      Icons.settings,
                      size: 60,
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    label: const Text('Settings'),
                  ),
                  //const SizedBox(
                  //width: 20,
                  //),
                  const Spacer(),
                  ElevatedButton.icon(
                    icon: const Icon(
                      Icons.image,
                      size: 60,
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.districtRoute1);
                    },
                    label: const Text('Gallery'),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(30),
              child: Row(
                children: [
                  ElevatedButton.icon(
                    icon: const Icon(
                      Icons.location_searching,
                      size: 60,
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.districtRoute);
                    },
                    label: const Text('Search\nSthaan'),
                  ),
                  //const SizedBox(
                  //width: 20,
                  //),
                  const Spacer(),
                  ElevatedButton.icon(
                    icon: const Icon(
                      Icons.email,
                      size: 60,
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    label: const Text('Suggest\nCorrection'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
