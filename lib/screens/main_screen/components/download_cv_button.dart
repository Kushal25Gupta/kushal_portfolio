import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kushal_portfolio/service/url_service.dart';

import '../../../constant/constant.dart';
import '../../../constant/urls.dart';

class DownloadCvButton extends StatelessWidget {
  const DownloadCvButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        UrlService.openUrl(Urls.downloadCvUrl);
      },
      child: FittedBox(
        child: Row(
          children: [
            Text(
              "DOWNLOAD CV",
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge!.color,
              ),
            ),
            const SizedBox(width: defaultPadding / 2),
            SvgPicture.asset("assets/icons/download.svg")
          ],
        ),
      ),
    );
  }
}
