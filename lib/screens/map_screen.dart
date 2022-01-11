import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:slobbr_app/utils/utils.dart';
import 'package:slobbr_app/widgets/search_bar.dart';
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: FutureBuilder<LocationData?>(
        future: getCurrentLocationData(),
        builder: (BuildContext context, AsyncSnapshot<LocationData?> snapshot){

          double longitude;
          double latitude;
          String style;

          if(snapshot.hasData){
            longitude = snapshot.data!.longitude!;
            latitude = snapshot.data!.latitude!;
          }else {
            latitude = 52.210530;
            longitude = 5.463793;
          }

          if(Utils(context: context).isDarkModeEnabled()){
            style = "mapbox://styles/bashazeveld/ckxkim34l0aqx14o5f3pd8gs8";
          }else {
            style = "mapbox://styles/bashazeveld/ckxfyhpyeftjk14mj5m2jxgcx";
          }


          return Stack(
            children: [
              MapboxMap(
                accessToken: "pk.eyJ1IjoiYmFzaGF6ZXZlbGQiLCJhIjoiY2twczU0bjJtMDA2ZTJvczdiMno0ZjFlaSJ9.ScVt-VQcblb3YtYW_0ltCA",
                styleString: style,
                compassViewPosition: CompassViewPosition.BottomRight,
                initialCameraPosition: CameraPosition(
                    zoom: 15.0,
                    target: LatLng(latitude, longitude)
                ),
                    /*onMapCreated: (MapboxMapController controller) {
                    controller.addSymbol(SymbolOptions(
                      iconImage:
                   )
                 );
                }*/
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: SearchBar(),
              )
            ],
          );
        }
      )
    );
  }
}


