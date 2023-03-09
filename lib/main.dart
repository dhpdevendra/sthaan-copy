import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_language_fonts/google_language_fonts.dart';
import 'src/locations.dart' as locations;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Map<String, Marker> _markers = {};
  //final Completer<GoogleMapController> _mapController = Completer();
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices();
    setState(() {
      _markers.clear();
      for (final office in googleOffices.sthaan) {
        final marker = Marker(
          markerId: MarkerId(office.id),
          icon: BitmapDescriptor.defaultMarker,
          position: LatLng(office.lat, office.lng),
          infoWindow: InfoWindow(
            title: office.name,
            snippet: office.mLocation,
          ),
        );
        _markers[office.name] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green[700],
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Mahanubhav Sthaan Vandan'),
            elevation: 2,
          ),
          body: GoogleMap(
            onMapCreated: _onMapCreated,
            myLocationButtonEnabled: true,
            initialCameraPosition: const CameraPosition(
              target: LatLng(20.9320, 77.7523),
              zoom: 6,
            ),
            markers: _markers.values.toSet(),
            //onMapCreated: (mapController) {
            // this.mapController.complete(mapController);
            //},
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Akola')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[200],
                  child: Center(child: Text('Amravati')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Ahmednagar')),
                ),
                Container(
                  height: 50,
                  color: Color.fromRGBO(255, 224, 130, 1),
                  child: Center(child: Text('Aurangabad')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Gondia')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[200],
                  child: Center(child: Text('Jalgaon')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Jalna')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[200],
                  child: Center(child: Text('Nanded')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Nagpur')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[200],
                  child: Center(child: Text('Nashik')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Beed')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[200],
                  child: Center(child: Text('Buldhana')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Bhandara')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[200],
                  child: Center(child: Text('Madhya Pradesh')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Wardha')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[200],
                  child: Center(child: Text('Washim')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: Center(child: Text('Satara')),
                ),
              ],
            ),
          )),
    );
  }
}
//flutter pub run build_runner build --delete-conflicting-outputs
//to remove conflicts in locations.dart about Locations.fromJson