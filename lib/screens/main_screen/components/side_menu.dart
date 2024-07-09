import 'package:flutter/material.dart';
import '../../../constant/constant.dart';
import 'area_info_widget.dart';
import 'coding.dart';
import 'download_cv_button.dart';
import 'knowledge.dart';
import 'links.dart';
import 'skills.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoWidget(),
                  Skills(),
                  SizedBox(height: defaultPadding),
                  Coding(),
                  Knowledge(),
                  Divider(),
                  SizedBox(height: defaultPadding / 2),
                  DownloadCvButton(),
                  Links(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
