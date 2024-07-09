import 'package:flutter/material.dart';
import 'package:kushal_portfolio/components/animated_progress_indicator.dart';
import '../../../constant/constant.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Dart",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.68,
          label: "C++",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.30,
          label: "NodeJS",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.60,
          label: "C",
        ),
      ],
    );
  }
}
