import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:slobbr_app/widgets/icon_badge.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

  Future<LocationData?> getCurrentLocationData() async {
    Location location = new Location();
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return null;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }

    _locationData = await location.getLocation();
    return _locationData;
  }


  /*  */

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: MapboxMap(
          accessToken: "pk.eyJ1IjoidGhlZ2lhbnRyZWRwYW5kYSIsImEiOiJjajN5bDR6bXUwMDFuMnhvODgzZWUycHZ0In0.1NOfAml6fG6aigkmQ1TAfg",
            initialCameraPosition: CameraPosition(
                zoom: 15.0,
                target: LatLng(52.210515, 5.463720)
            )
        ),
    );
  }
}


