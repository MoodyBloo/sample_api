import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import '../screens/detail_screen.dart';
import '../screens/splash_screen.dart';
import 'screens/home_screen.dart';


void main() {
  runApp(const SampleAPI());
}

class SampleAPI extends StatefulWidget {
  const SampleAPI({super.key});

  @override
  State<SampleAPI> createState() => _SampleAPIState();
}

class _SampleAPIState extends State<SampleAPI> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
      SystemUiOverlay.bottom,
    ]);
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values); // to re-show bars
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'NUBDExhange',
          initialRoute: '/splash',
          routes: {
            '/splash': (context) => const SplashScreen(),
            '/home_screen': (context) => const HomeScreen(),
            '/detail_screen': (context) => const DetailsScren(),
          },
        );
      },
    );
  }
}
