import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../services/weather.dart';
import 'location_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  // This function is used to get the user current location
  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LocationScreen(
            locationWeather: weatherData,
          );
        },
      ),
    );

    // Location location = Location();
    // await location.getCurrentLocation();
    // print(location.latitude);
    // print(location.longitude);
  }

  @override
  void initState() {
    getLocationData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.sp,
        ),
      ),
      // body: Center(
      //   child: TextButton(
      //     style: TextButton.styleFrom(
      //       backgroundColor: Colors.blueAccent,
      //     ),
      //     onPressed: () {
      //       getLocationData();
      //     },
      //     child: Text(
      //       'Get Location',
      //       style: TextStyle(
      //         fontSize: 50.sp,
      //         color: Colors.white,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
