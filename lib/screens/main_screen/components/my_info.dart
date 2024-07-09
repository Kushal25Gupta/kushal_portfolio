import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/Profile_Pic.jpeg'),
            ),
            const Spacer(),
            Text(
              'Kushal Gupta',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Text(
              "Flutter Developer \n & Coding Enthusiastic",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.25,
                fontWeight: FontWeight.w200,
              ),
            ),
            const Spacer(flex: 2)
          ],
        ),
      ),
    );
  }
}
