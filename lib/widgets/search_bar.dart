import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:geocoder_flutter/geocoder.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController _searchControl = new TextEditingController();

  Future<LocationData?> getCurrentLocationData() async {

    Location location = new Location();
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if(!_serviceEnabled){
      _serviceEnabled = await location.requestService();
      if(!_serviceEnabled){
        return null;
      }
    }

    _permissionGranted = await location.hasPermission();
    if(_permissionGranted == PermissionStatus.denied){
      _permissionGranted = await location.requestPermission();
      if(_permissionGranted != PermissionStatus.granted){
        return null;
      }
    }

    _locationData = await location.getLocation();
    return _locationData;

  }

  Future<Address?> getCurrentAddress() async {

    LocationData _currentLocationData;

    _currentLocationData = (await getCurrentLocationData())!;
    final coordinates = new Coordinates(_currentLocationData.latitude, _currentLocationData.longitude);
    var addresses = await Geocoder.local.findAddressesFromCoordinates(coordinates);
    var first = addresses.first;

    return first;

  }



  @override
  Widget build(BuildContext context){

    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: const BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
      child: FutureBuilder<Address?>(
        future: getCurrentAddress(),
        builder: (BuildContext context, AsyncSnapshot<Address?> snapshot) {
          var address;

          if(snapshot.hasData){
            address = "${snapshot.data!.thoroughfare} ${snapshot.data!.featureName}, ${snapshot.data!.locality}";
          }else{
            address = "Amsterdam, Den Haag";
          }

          return TextField(
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.blueGrey[300],
            ),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              hintText: address,
              prefixIcon: Icon(
                Icons.place,
                color: Colors.blueGrey[300],
              ),
              hintStyle: TextStyle(
                fontSize: 15.0,
                color: Colors.blueGrey[300],
              ),
            ),
            maxLines: 1,
            controller: _searchControl,
          );
        }
      )
    );
  }
}