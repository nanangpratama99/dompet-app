import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/../../constant/constant.dart';

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/svg/wallet-money.svg",
          color: color3,
          width: 50,
        ),
        const SizedBox(width: 10),
        SvgPicture.asset(
          "assets/svg/burger-menu.svg",
          width: 50,
        ),
      ],
    );
  }
}
