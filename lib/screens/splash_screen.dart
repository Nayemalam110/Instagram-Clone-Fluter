import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta_clone/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          color: Colors.green,
          child: const Text(
            'Loading....',
            style: TextStyle(
              fontSize: 40,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

void navToHome() async {
  await Future.delayed(const Duration(seconds: 2), () {
    Get.off(() => HomeScreen());
  });
}
