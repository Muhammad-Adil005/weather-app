import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 90.sp,
);

TextStyle kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 50.sp,
);

TextStyle kButtonTextStyle = TextStyle(
  fontSize: 20.sp,
  fontFamily: 'Spartan MB',
);

TextStyle kConditionTextStyle = TextStyle(
  fontSize: 90.sp,
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
    borderSide: BorderSide.none,
  ),
);
