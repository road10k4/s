import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:url_launcher/url_launcher_string.dart';


class Home extends StatefulWidget{
  static const routeName = '/home';
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();

}
class _HomeState extends State<Home>{

  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: () {
              _openGoogle();
            },
            child:  Text("Show My Location on Google Maps"),
             
            )
          ],
        ))
        
    );
  }
}
_openGoogle() async {
    var status = await Permission.location.request();
    
    if (status == PermissionStatus.granted) {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      double lat = position.latitude;
      double lng = position.longitude;

      final String googleMapsUrl =
          "google.navigation:q=$lat,$lng&mode=d";

      if (await canLaunchUrlString(googleMapsUrl)) {
        await launchUrlString(googleMapsUrl);
      } else {
        throw 'Could not launch $googleMapsUrl';
      }
    } else {
      // Handle the case where the user denied or didn't grant permission.
      print("Permission denied");
    }
  }

