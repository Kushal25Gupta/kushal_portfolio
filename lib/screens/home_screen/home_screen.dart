import 'package:flutter/material.dart';
import 'package:kushal_portfolio/constant/constant.dart';
import 'package:kushal_portfolio/screens/main_screen/main_screen.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        SizedBox(height: defaultPadding),
        MyProjects(),
      ],
    );
  }
}
