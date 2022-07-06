
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      designSize: Size(1023,648),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(debugShowCheckedModeBanner: false,
        title: 'Flutter demo',
          home: HomeScreen(),
        );

      },

      );

  }
}

