import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MapScreenState();
  }

}

class MapScreenState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Map screen'),),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
            target: LatLng(10.732869174213993, 106.69973741130023),
            zoom: 12
        ),
      ),
    );
  }
}