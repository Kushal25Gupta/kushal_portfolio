import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:kushal_portfolio/responsive.dart';
import '../../../constant/constant.dart';
import 'flutter_coded_text.dart';

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Responsive.isMobile(context)
          ? Theme.of(context).textTheme.labelSmall!
          : Theme.of(context).textTheme.titleSmall!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: defaultPadding / 2),
          const Text("I have build "),
          Responsive.isMobile(context)
              ? const Expanded(child: AnimatedText())
              : const AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "responsive web and mobile app.",
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "a Tik Tok clone App.",
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "a app to upload image on a location.",
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "dynamic group chat app with authentication.",
          speed: const Duration(milliseconds: 60),
        ),
      ],
    );
  }
}
