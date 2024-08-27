import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    getIsLogin();
    super.initState();
  }

  void getIsLogin() {
    Timer(
      const Duration(seconds: 2),
      () => Navigator.popAndPushNamed(context, '/home_screen'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: ScreenUtil().screenHeight,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [NU_BLUE, NU_YELLOW])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(50),
            ),
            Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/icons/NU_shield.svg',
                width: ScreenUtil().setWidth(150),
                height: ScreenUtil().setHeight(150),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(200),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/NUCCIT_Logo.png',
                scale: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
