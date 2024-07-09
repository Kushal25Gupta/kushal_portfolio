import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kushal_portfolio/constant/constant.dart';
import 'package:kushal_portfolio/screens/home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Kushal Gupta",
                style: Theme.of(context).textTheme.titleSmall!),
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              duration: defaultDuration,
              builder: (context, double value, child) => SizedBox(
                width: 200,
                child: Column(
                  children: [
                    const SizedBox(height: defaultPadding / 2),
                    LinearProgressIndicator(
                      value: value,
                      color: primaryColor,
                      backgroundColor: bgColor,
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    Text("${(value * 100).toInt()}%"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
