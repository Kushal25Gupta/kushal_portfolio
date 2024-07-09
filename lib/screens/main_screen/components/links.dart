import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kushal_portfolio/constant/urls.dart';
import 'package:kushal_portfolio/service/url_service.dart';

import '../../../constant/constant.dart';

class Links extends StatelessWidget {
  const Links({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      color: const Color(0xFF24242E),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
            onPressed: () {
              UrlService.openUrl(Urls.linkedinUrl);
            },
            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
          ),
          IconButton(
            onPressed: () {
              UrlService.openUrl(Urls.gitHubUrl);
            },
            icon: SvgPicture.asset("assets/icons/github.svg"),
          ),
          IconButton(
            onPressed: () {
              UrlService.openUrl(Urls.twitterUrl);
            },
            icon: SvgPicture.asset("assets/icons/twitter.svg"),
          ),
          IconButton(
            onPressed: () {
              UrlService.openUrl(Urls.leetCodeUrl);
            },
            icon: SvgPicture.asset(
              "assets/icons/leetcode.svg",
              color: Colors.grey,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
