import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constant/constant.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Knowledge',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const KnowledgeText(text: "Flutter, Dart, Firebase"),
        const KnowledgeText(text: "Programming, DSA, NodeJS"),
        const KnowledgeText(text: "Python, GIT Knowledge"),
        const KnowledgeText(text: "Video Editing"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          const SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}
