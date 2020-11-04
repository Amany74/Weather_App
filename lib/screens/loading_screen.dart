

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
@override
  void initState (){
    super.initState();
    getLocation();
  }



  void getLocation() async {
// await tells the comp please await until this complete before doing any other tasks to be done
//future is just a recet not an actual coffe

    Future <Position>  position = (await Geolocator().getLastKnownPosition(desiredAccuracy: LocationAccuracy.high)) as Future<Position>;
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
