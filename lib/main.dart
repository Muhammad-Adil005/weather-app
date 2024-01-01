import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whether_app/screens/loading_screen.dart';

void main() => runApp(WhetherApp());

class WhetherApp extends StatelessWidget {
  const WhetherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Whether App',
          theme: ThemeData.dark(),
          home: const LoadingScreen(),
        );
      },
    );
  }
}
