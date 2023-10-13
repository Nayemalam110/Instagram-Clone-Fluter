import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta_clone/controller%20binding/all_binding.dart';
import 'package:insta_clone/screens/splash_screen.dart';

import 'screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Instagram Clone',
      initialBinding: AllBinding(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
