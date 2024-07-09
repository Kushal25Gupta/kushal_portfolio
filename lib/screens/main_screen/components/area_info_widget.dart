import 'package:flutter/material.dart';

import 'area_info_text.dart';

class AreaInfoWidget extends StatelessWidget {
  const AreaInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AreaInfoText(
          title: "Residence",
          text: "India",
        ),
        AreaInfoText(
          title: "City",
          text: "Jaipur",
        ),
        AreaInfoText(
          title: "Age",
          text: "19",
        ),
      ],
    );
  }
}
