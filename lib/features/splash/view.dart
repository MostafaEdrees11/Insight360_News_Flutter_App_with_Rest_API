import 'package:flutter/material.dart';
import 'package:insight360_project/core/resources/app_colors.dart';
import 'package:insight360_project/core/resources/app_images.dart';
import 'package:insight360_project/features/home/view.dart';
import 'package:text_gradiate/text_gradiate.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(AppImages.logoImage, width: 150, height: 150),
              TextGradiate(
                text: Text(
                  'INSIGHT 360',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
                ),
                colors: [AppColors.primaryColor, Colors.white],
                gradientType: GradientType.linear,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                tileMode: TileMode.clamp,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
