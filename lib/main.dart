import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_design/views/home_screen.dart';

void main() {
  runApp( ScreenUtilInit(
      designSize: const Size(375, 812),
  minTextAdapt: true,
  splitScreenMode: true,
  builder: (context , child) {
  return MaterialApp (home:  MyApp());}));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
